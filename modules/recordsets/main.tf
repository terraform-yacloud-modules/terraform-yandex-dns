locals {
  # Terragrunt users have to provide `records_jsonencoded` as jsonencode()'d string.
  # See details: https://github.com/gruntwork-io/terragrunt/issues/1211
  records = concat(var.records, try(jsondecode(var.records_jsonencoded), []))

  # Convert `records` from list to map with unique keys
  recordsets = { for rs in local.records : try(rs.key, join(" ", compact(["${rs.name} ${rs.type}", try(rs.set_identifier, "")]))) => rs }
}

resource "yandex_dns_recordset" "this" {
  for_each = local.recordsets

  lifecycle {
    precondition {
      condition     = var.zone_id != null || var.zone_name != null
      error_message = "Either zone_id or zone_name must be set for the DNS record set."
    }
  }

  zone_id = var.zone_name != null ? data.yandex_dns_zone.main[0].id : var.zone_id

  name = each.value.name
  type = each.value.type
  ttl  = each.value.ttl
  data = each.value.data

  dynamic "timeouts" {
    for_each = var.timeouts != null ? [var.timeouts] : []
    content {
      create = try(timeouts.value.create, null)
      update = try(timeouts.value.update, null)
      delete = try(timeouts.value.delete, null)
    }
  }
}
