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
  zones = { for zone in local.dns_zones : zone => {
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
| [yandex_dns_zone.main](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/dns_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the DNS zone | `string` | `""` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Folder-ID where need to add permissions. If omitted default FOLDER\_ID will be used | `string` | `null` | no |
| <a name="input_is_public"></a> [is\_public](#input\_is\_public) | The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | A set of labels which will be applied to all resources | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | User assigned name of a DNS resource | `string` | n/a | yes |
| <a name="input_private_networks"></a> [private\_networks](#input\_private\_networks) | For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from | `list(string)` | `[]` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | The DNS name of this zone, e.g. 'example.com.'. Must ends with dot | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | ID of a new DNS zone. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
