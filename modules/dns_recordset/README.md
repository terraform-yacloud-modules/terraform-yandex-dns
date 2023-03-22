# iam-account

Manage IAM account.


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_dns_recordset.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/dns_recordset) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_data"></a> [data](#input\_data) | The string data for the records in this record set | `list(string)` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The DNS name this record set will apply to | `string` | n/a | yes |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | The time-to-live of this record set (seconds) | `string` | `null` | no |
| <a name="input_type"></a> [type](#input\_type) | The DNS record set type | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | The id of the zone in which this record set will reside. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
