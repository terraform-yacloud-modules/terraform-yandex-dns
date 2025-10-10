# iam-account

Manage IAM account.


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
| [yandex_dns_zone.main](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/dns_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | An optional description of the DNS zone. Helps document the purpose and usage of the zone. | `string` | `""` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | The ID of the Yandex Cloud folder where the DNS zone will be created. If omitted, the default folder ID from the provider configuration will be used. | `string` | `null` | no |
| <a name="input_is_public"></a> [is\_public](#input\_is\_public) | Controls the visibility of the DNS zone. Public zones are accessible from the Internet, while private zones are only visible to resources within the specified VPC networks. | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | A set of key-value pairs (labels) to apply to the DNS zone. Useful for organizing, filtering, and managing resources. | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | The user-assigned name of the DNS zone. Must be unique within the folder and helps identify the zone in the Yandex Cloud console. | `string` | n/a | yes |
| <a name="input_private_networks"></a> [private\_networks](#input\_private\_networks) | For private zones, specifies the list of VPC network IDs where the zone will be visible and accessible. Required when is\_public is false. | `list(string)` | `[]` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | The DNS name of the zone (e.g., 'example.com.'). Must end with a dot and represents the domain namespace managed by this zone. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | The timestamp when the DNS zone was created |
| <a name="output_description"></a> [description](#output\_description) | Description of the DNS zone |
| <a name="output_folder_id"></a> [folder\_id](#output\_folder\_id) | Folder ID where the DNS zone is created |
| <a name="output_id"></a> [id](#output\_id) | ID of a new DNS zone. |
| <a name="output_labels"></a> [labels](#output\_labels) | Labels applied to the DNS zone |
| <a name="output_name"></a> [name](#output\_name) | The user-assigned name of the DNS zone as specified in the configuration. |
| <a name="output_private_networks"></a> [private\_networks](#output\_private\_networks) | The set of Virtual Private Cloud resources that the zone is visible from |
| <a name="output_public"></a> [public](#output\_public) | Indicates whether the DNS zone is public (accessible from the Internet) or private (restricted to specified VPC networks). |
| <a name="output_zone"></a> [zone](#output\_zone) | The DNS name of the zone (e.g., 'example.com.') representing the domain namespace managed by this zone. |
<!-- END_TF_DOCS -->
