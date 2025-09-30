output "record_id" {
  description = "The DNS record set ID"
  value       = yandex_dns_recordset.this.id
}

output "record_name" {
  description = "The DNS name (FQDN) that this record set applies to."
  value       = yandex_dns_recordset.this.name
}

output "record_type" {
  description = "The DNS record type (e.g., A, AAAA, CNAME, MX, TXT, NS) of this record set."
  value       = yandex_dns_recordset.this.type
}

output "record_ttl" {
  description = "The time-to-live (TTL) value for this record set in seconds."
  value       = yandex_dns_recordset.this.ttl
}

output "record_data" {
  description = "The list of data values for the DNS records in this record set."
  value       = yandex_dns_recordset.this.data
}

output "zone_id" {
  description = "The ID of the DNS zone where this record set is located."
  value       = yandex_dns_recordset.this.zone_id
}

output "zone_name" {
  description = "The name of the DNS zone where the record set is located. Only available if zone_name was provided in the configuration."
  value       = var.zone_name != null ? data.yandex_dns_zone.main[0].name : null
}

output "zone_domain" {
  description = "The domain name of the DNS zone (e.g., 'example.com.'). Only available if zone_name was provided in the configuration."
  value       = var.zone_name != null ? data.yandex_dns_zone.main[0].zone : null
}

