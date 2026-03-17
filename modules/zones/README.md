# DNS zones

Manage DNS zones.

Example of usage in Terragrunt `terragrunt.hcl`:
```hcl
include "root" {
  path = find_in_parent_folders("root.hcl")
}

include "env" {
  path = find_in_parent_folders("environment.hcl")
}

locals {
  env_vars  = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  dns_zones = local.env_vars.locals.dns_zones
}

terraform {
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/zones?ref=zones"
}

inputs = {
  zones = {
    for zone in local.dns_zones : zone => {
      name = replace(zone, ".", "-")
      public = true
    }
  }
}
```
with `environment.hcl`:
```hcl
locals {
  dns_zones = [ "example.com", "example.org" ]
}
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
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >= 0.72.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_dns_zone.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/dns_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether to create DNS zone | `bool` | `true` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Folder-ID where need to add permissions. If omitted default FOLDER\_ID will be used | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | A set of labels which will be applied to all resources | `map(string)` | `{}` | no |
| <a name="input_zones"></a> [zones](#input\_zones) | Map of DNS zone parameters | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_yandex_dns_zone_id"></a> [yandex\_dns\_zone\_id](#output\_yandex\_dns\_zone\_id) | Zone ID of DNS zone |
| <a name="output_yandex_dns_zone_name"></a> [yandex\_dns\_zone\_name](#output\_yandex\_dns\_zone\_name) | Name of DNS zone |
<!-- END_TF_DOCS -->
