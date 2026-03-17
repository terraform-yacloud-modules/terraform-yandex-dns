resource "yandex_dns_zone" "this" {
  for_each = { for k, v in var.zones : k => v if var.create }

  name        = each.value.name != null ? each.value.name : replace(each.key, ".", "-")
  description = each.value.description != null ? each.value.description : "DNS zone for ${each.key}"

  zone = each.value.zone != null ? each.value.zone : "${each.key}."

  folder_id = each.value.folder_id != null ? each.value.folder_id : var.folder_id

  public           = each.value.public
  private_networks = each.value.private_networks

  labels = merge(
    each.value.labels,
    var.labels
  )

  deletion_protection = each.value.deletion_protection

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = try(timeouts.value.create, null)
      update = try(timeouts.value.update, null)
      delete = try(timeouts.value.delete, null)
    }
  }
}
