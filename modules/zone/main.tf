resource "yandex_dns_zone" "main" {
  name        = var.name
  description = var.description
  labels      = var.labels

  zone      = var.zone
  folder_id = var.folder_id

  public           = var.is_public
  private_networks = var.private_networks
}
