data "yandex_dns_zone" "this" {
  count = (var.zone_id != null || var.zone_name != null) ? 1 : 0

  name      = var.zone_name
  folder_id = var.folder_id
}
