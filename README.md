# Yandex Cloud DNS Terraform module

Terraform module which creates Yandex Cloud DNS resources.

## Modules

| Module | Description |
|--------|-------------|
| [zone](modules/zone/) | Creates a single `yandex_dns_zone` resource (public or private DNS zone) |
| [recordset](modules/recordset/) | Creates a single `yandex_dns_recordset` resource (A, CNAME, MX, etc.) |
| [zones](modules/zones/) | Creates multiple DNS zones from a map. Supports `deletion_protection`, `timeouts`, per-zone labels and private networks |
| [recordsets](modules/recordsets/) | Creates multiple DNS record sets from a list. Supports `timeouts`, Terragrunt `records_jsonencoded` input, and zone lookup by name |

### Terragrunt

The `zones` and `recordsets` modules work well with Terragrunt — all parameters are passed via the `inputs` block in `terragrunt.hcl`, and typed variables (`map(object)` / `list(object)`) ensure validation at `plan` time.

Example `terragrunt.hcl` for each module:
- [`examples/zones_terragrunt/terragrunt.hcl`](examples/zones_terragrunt/terragrunt.hcl) — create multiple DNS zones (public + private)
- [`examples/recordsets_terragrunt/terragrunt.hcl`](examples/recordsets_terragrunt/terragrunt.hcl) — create a set of DNS records (A, MX, TXT, CNAME)

## Examples

Examples codified under
the [`examples`](https://github.com/terraform-yacloud-modules/terraform-yandex-dns/tree/main/examples) are intended
to give users references for how to use the module(s) as well as testing/validating changes to the source code of the
module. If contributing to the project, please be sure to make any appropriate updates to the relevant examples to allow
maintainers to test your changes and to keep the examples up to date for users. Thank you!

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## License

Apache-2.0 Licensed.
See [LICENSE](https://github.com/terraform-yacloud-modules/terraform-yandex-dns/blob/main/LICENSE).

<!-- END_TF_DOCS -->
