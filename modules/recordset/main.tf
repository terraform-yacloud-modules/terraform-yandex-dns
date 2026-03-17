resource "yandex_dns_recordset" "this" {
  lifecycle {
    precondition {
      condition     = var.zone_id != null || var.zone_name != null
      error_message = "Either zone_id or zone_name must be set for the DNS record set."
    }
  }

  zone_id = var.zone_name != null ? data.yandex_dns_zone.main[0].id : var.zone_id
  name    = var.name
  type    = var.type
  ttl     = var.ttl
  data    = var.data

  dynamic "timeouts" {
    for_each = var.timeouts == null ? [] : [var.timeouts]
    content {
      create = try(timeouts.value.create, null)
      update = try(timeouts.value.update, null)
      delete = try(timeouts.value.delete, null)
    }
  }

}
