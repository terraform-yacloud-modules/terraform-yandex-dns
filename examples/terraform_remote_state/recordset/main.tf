data "terraform_remote_state" "zone" {
  backend = "local"

  config = {
    path = "../zone/terraform.tfstate"
  }
}

module "dns_recordset" {
  #   source = "../../modules/recordset/"
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/recordset?ref=v1.0.0"

  zone_id = data.terraform_remote_state.zone.outputs.zone_id
  name    = "test.example.com."
  type    = "A"
  ttl     = 200
  data    = ["10.1.0.1"]
}
