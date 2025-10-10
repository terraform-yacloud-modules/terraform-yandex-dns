# DNS Zone example

Terraform module which creates Yandex Cloud DNS resources.

## Usage

To run this example you need to execute:

```bash
export YC_FOLDER_ID='b1gts6lhpg0oskqf7v32'
terraform init
terraform plan
terraform apply
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.72.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dns_zone"></a> [dns\_zone](#module\_dns\_zone) | ../../../modules/zone/ | n/a |
| <a name="module_network"></a> [network](#module\_network) | git::https://github.com/terraform-yacloud-modules/terraform-yandex-vpc.git | v1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | The timestamp when the DNS zone was created |
| <a name="output_description"></a> [description](#output\_description) | Description of the DNS zone |
| <a name="output_folder_id"></a> [folder\_id](#output\_folder\_id) | Folder ID where the DNS zone is created |
| <a name="output_labels"></a> [labels](#output\_labels) | Labels applied to the DNS zone |
| <a name="output_name"></a> [name](#output\_name) | User assigned name of the DNS zone |
| <a name="output_private_networks"></a> [private\_networks](#output\_private\_networks) | The set of Virtual Private Cloud resources that the zone is visible from |
| <a name="output_public"></a> [public](#output\_public) | The zone's visibility: public zones are exposed to the Internet |
| <a name="output_zone"></a> [zone](#output\_zone) | The DNS name of this zone |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | The unique identifier of the DNS zone created by the module. |
<!-- END_TF_DOCS -->
