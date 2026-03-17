output "zone_ids" {
  description = "Map of zone keys to their IDs"
  value       = module.dns_zones.yandex_dns_zone_id
}

output "zone_names" {
  description = "Map of zone keys to their names"
  value       = module.dns_zones.yandex_dns_zone_name
}
