output "yandex_dns_recordset" {
  description = "DNS record attributes"
  value = {
    for k, v in yandex_dns_recordset.this : k => {
      name    = v.name
      type    = v.type
      ttl     = v.ttl
      data    = v.data
      zone_id = v.zone_id
    }
  }
}

output "yandex_dns_recordset_jsonencoded" {
  description = "DNS record attributes (jsonencoded)"
  value       = jsonencode(yandex_dns_recordset.this)
}
