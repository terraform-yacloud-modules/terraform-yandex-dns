output "yandex_dns_zone_id" {
  description = "Zone ID of DNS zone"
  value       = { for k, v in yandex_dns_zone.this : k => v.id }
}

output "yandex_dns_zone_name" {
  description = "Name of DNS zone"
  value       = { for k, v in yandex_dns_zone.this : k => v.name }
}


