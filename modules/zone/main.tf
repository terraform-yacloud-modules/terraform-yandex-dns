resource "yandex_dns_zone" "main" {
  name        = var.name
  description = var.description
  labels      = var.labels

  zone      = var.zone
  folder_id = var.folder_id

  public           = var.is_public
  private_networks = var.private_networks

  dynamic "timeouts" {
    for_each = var.timeouts == null ? [] : [var.timeouts]
    content {
      create = try(timeouts.value.create, null)
      update = try(timeouts.value.update, null)
      delete = try(timeouts.value.delete, null)
    }
  }

}
