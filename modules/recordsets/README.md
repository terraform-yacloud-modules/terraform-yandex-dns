# DNS recordsets

Manage DNS recordsets.


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
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Folder ID in which this record will be created | `string` | `null` | no |
| <a name="input_records"></a> [records](#input\_records) | List of objects of DNS records | <pre>list(object({<br/>    key            = optional(string)<br/>    name           = string<br/>    type           = string<br/>    ttl            = optional(number, 300)<br/>    data           = optional(list(string))<br/>    set_identifier = optional(string)<br/>  }))</pre> | `[]` | no |
| <a name="input_records_jsonencoded"></a> [records\_jsonencoded](#input\_records\_jsonencoded) | List of map of DNS records (stored as jsonencoded string, for terragrunt) | `string` | `null` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | Timeout settings for create/update/delete operations on DNS record sets | <pre>object({<br/>    create = optional(string)<br/>    update = optional(string)<br/>    delete = optional(string)<br/>  })</pre> | `null` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | The id of the zone in which this record set will reside | `string` | `null` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The name of the zone in which this record set will reside; Skipped if zone\_id is set | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_yandex_dns_recordset"></a> [yandex\_dns\_recordset](#output\_yandex\_dns\_recordset) | DNS record attributes |
| <a name="output_yandex_dns_recordset_jsonencoded"></a> [yandex\_dns\_recordset\_jsonencoded](#output\_yandex\_dns\_recordset\_jsonencoded) | DNS record attributes (jsonencoded) |
<!-- END_TF_DOCS -->
