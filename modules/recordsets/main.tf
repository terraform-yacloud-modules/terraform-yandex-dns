locals {
  # Terragrunt users have to provide `records_jsonencoded` as jsonencode()'d string.
  # See details: https://github.com/gruntwork-io/terragrunt/issues/1211
  records = concat(var.records, try(jsondecode(var.records_jsonencoded), []))

  # Convert `records` from list to map with unique keys
  recordsets = { for rs in local.records : try(rs.key, join(" ", compact(["${rs.name} ${rs.type}", try(rs.set_identifier, "")]))) => rs }
}

resource "yandex_dns_recordset" "this" {
  for_each = { for k, v in local.recordsets : k => v if(var.zone_id != null || var.zone_name != null) }

  zone_id = var.zone_name != null ? data.yandex_dns_zone.main[0].id : var.zone_id

  name = each.value.name
  type = lookup(each.value, "type", "A")
  ttl  = lookup(each.value, "ttl", 300)
  data = lookup(each.value, "data", null)
}
