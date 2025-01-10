resource "yandex_dns_zone" "this" {
  for_each = { for k, v in var.zones : k => v if var.create }

  name        = lookup(each.value, "name", chomp(each.key, "."))
  description = lookup(each.value, "description", "DNS zone for ${each.key}")

  zone = lookup(each.value, "zone", each.key)

  folder_id = lookup(each.value, "folder_id", var.folder_id)

  public           = lookup(each.value, "public", false)
  private_networks = lookup(each.value, "private_networks", [])

  labels = merge(
    lookup(each.value, "labels", {}),
    var.labels
  )
}
