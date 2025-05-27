output "id" {
  description = "ID of a new DNS zone."
  value       = yandex_dns_zone.main.id
}

output "name" {
  description = "User assigned name of the DNS zone"
  value       = yandex_dns_zone.main.name
}

output "description" {
  description = "Description of the DNS zone"
  value       = yandex_dns_zone.main.description
}

output "zone" {
  description = "The DNS name of this zone"
  value       = yandex_dns_zone.main.zone
}

output "folder_id" {
  description = "Folder ID where the DNS zone is created"
  value       = yandex_dns_zone.main.folder_id
}

output "public" {
  description = "The zone's visibility: public zones are exposed to the Internet"
  value       = yandex_dns_zone.main.public
}

output "private_networks" {
  description = "The set of Virtual Private Cloud resources that the zone is visible from"
  value       = yandex_dns_zone.main.private_networks
}

output "labels" {
  description = "Labels applied to the DNS zone"
  value       = yandex_dns_zone.main.labels
}

output "created_at" {
  description = "The timestamp when the DNS zone was created"
  value       = yandex_dns_zone.main.created_at
}
