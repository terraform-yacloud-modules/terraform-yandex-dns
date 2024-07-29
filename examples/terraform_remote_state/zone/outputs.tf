output "zone_id" {
  description = "The unique identifier of the DNS zone created by the module."
  value       = module.dns_zone.id
}
