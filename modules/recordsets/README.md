# DNS recordsets

Manage DNS recordsets.


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
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
| <a name="input_data"></a> [data](#input\_data) | The string data for the records in this record set | `list(string)` | `null` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Folder ID in which this record will be created | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The DNS name this record set will apply to | `string` | n/a | yes |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | The time-to-live of this record set (seconds) | `string` | `null` | no |
| <a name="input_type"></a> [type](#input\_type) | The DNS record set type | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | The id of the zone in which this record set will reside | `string` | `null` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The name of the zone in which this record set will reside; Skipped if zone\_id is set | `string` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
