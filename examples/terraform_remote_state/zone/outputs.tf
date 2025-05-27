output "zone_id" {
  description = "The unique identifier of the DNS zone created by the module."
  value       = module.dns_zone.id
}

output "name" {
  description = "User assigned name of the DNS zone"
  value       = module.dns_zone.name
}

output "description" {
  description = "Description of the DNS zone"
  value       = module.dns_zone.description
}

output "zone" {
  description = "The DNS name of this zone"
  value       = module.dns_zone.zone
}

output "folder_id" {
  description = "Folder ID where the DNS zone is created"
  value       = module.dns_zone.folder_id
}

output "public" {
  description = "The zone's visibility: public zones are exposed to the Internet"
  value       = module.dns_zone.public
}

output "private_networks" {
  description = "The set of Virtual Private Cloud resources that the zone is visible from"
  value       = module.dns_zone.private_networks
}

output "labels" {
  description = "Labels applied to the DNS zone"
  value       = module.dns_zone.labels
}

output "created_at" {
  description = "The timestamp when the DNS zone was created"
  value       = module.dns_zone.created_at
}
