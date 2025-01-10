output "yandex_dns_zone_id" {
  description = "Zone ID of DNS zone"
  value       = { for k, v in yandex_dns_zone.this : k => v.zone_id }
}

output "yandex_dns_zone_name_servers" {
  description = "Name servers of DNS zone"
  value       = { for k, v in yandex_dns_zone.this : k => v.name_servers }
}

output "yandex_dns_zone_primary_name_server" {
  description = "The DNS name server that created the SOA record."
  value       = { for k, v in yandex_dns_zone.this : k => v.primary_name_server }
}

output "yandex_dns_zone_name" {
  description = "Name of DNS zone"
  value       = { for k, v in yandex_dns_zone.this : k => v.name }
}


