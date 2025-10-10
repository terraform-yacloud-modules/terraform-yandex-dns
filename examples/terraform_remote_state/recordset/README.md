# DNS recordset example

Terraform module which creates Yandex Cloud DNS resources.

## Usage

To run this example you need to execute:

```bash
export YC_FOLDER_ID='folder_id'
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

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dns_recordset"></a> [dns\_recordset](#module\_dns\_recordset) | ../../../modules/recordset/ | n/a |

## Resources

| Name | Type |
|------|------|
| [terraform_remote_state.zone](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_record_data"></a> [record\_data](#output\_record\_data) | n/a |
| <a name="output_record_id"></a> [record\_id](#output\_record\_id) | n/a |
| <a name="output_record_name"></a> [record\_name](#output\_record\_name) | n/a |
| <a name="output_record_ttl"></a> [record\_ttl](#output\_record\_ttl) | n/a |
| <a name="output_record_type"></a> [record\_type](#output\_record\_type) | n/a |
| <a name="output_zone_domain"></a> [zone\_domain](#output\_zone\_domain) | n/a |
| <a name="output_zone_name"></a> [zone\_name](#output\_zone\_name) | n/a |
<!-- END_TF_DOCS -->
