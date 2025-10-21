# yandex-dns-recordset

Manage Yandex Cloud DNS RecordSet.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.72.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >= 0.72.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_dns_recordset.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/dns_recordset) | resource |
| [yandex_dns_zone.main](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/dns_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_data"></a> [data](#input\_data) | The list of data values for the DNS records in this record set. Format depends on the record type (e.g., IP addresses for A records, domain names for CNAME records). | `list(string)` | `null` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | The ID of the Yandex Cloud folder where the DNS record will be created. If omitted, the default folder ID from the provider configuration will be used. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The DNS name (FQDN) that this record set will apply to. Can be a subdomain or the zone apex. | `string` | n/a | yes |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | Timeout settings for cluster operations | <pre>object({<br/>    create = optional(string)<br/>    update = optional(string)<br/>    delete = optional(string)<br/>  })</pre> | `null` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | The time-to-live (TTL) value for this record set in seconds. Controls how long DNS resolvers cache this record. | `string` | `null` | no |
| <a name="input_type"></a> [type](#input\_type) | The DNS record type (e.g., A, AAAA, CNAME, MX, TXT, NS). Determines the format and purpose of the record data. | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | The ID of the DNS zone where this record set will be created. Takes precedence over zone\_name if both are specified. | `string` | `null` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The name of the DNS zone where this record set will be created. This parameter is ignored if zone\_id is specified. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_record_data"></a> [record\_data](#output\_record\_data) | The list of data values for the DNS records in this record set. |
| <a name="output_record_id"></a> [record\_id](#output\_record\_id) | The DNS record set ID |
| <a name="output_record_name"></a> [record\_name](#output\_record\_name) | The DNS name (FQDN) that this record set applies to. |
| <a name="output_record_ttl"></a> [record\_ttl](#output\_record\_ttl) | The time-to-live (TTL) value for this record set in seconds. |
| <a name="output_record_type"></a> [record\_type](#output\_record\_type) | The DNS record type (e.g., A, AAAA, CNAME, MX, TXT, NS) of this record set. |
| <a name="output_zone_domain"></a> [zone\_domain](#output\_zone\_domain) | The domain name of the DNS zone (e.g., 'example.com.'). Only available if zone\_name was provided in the configuration. |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | The ID of the DNS zone where this record set is located. |
| <a name="output_zone_name"></a> [zone\_name](#output\_zone\_name) | The name of the DNS zone where the record set is located. Only available if zone\_name was provided in the configuration. |
<!-- END_TF_DOCS -->
