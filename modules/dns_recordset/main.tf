resource "yandex_dns_recordset" "this" {
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  ttl     = var.ttl
  data    = var.data
}
