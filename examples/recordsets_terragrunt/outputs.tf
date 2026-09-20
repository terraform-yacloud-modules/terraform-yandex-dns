output "recordsets" {
  description = "DNS record set attributes"
  value       = module.dns_recordsets.yandex_dns_recordset
}
