data "terraform_remote_state" "zone" {
  backend = "local"

  config = {
    path = "../zone/terraform.tfstate"
  }
}

module "dns-recordset" {
  #   source = "../../modules/recordset/"
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/recordset"

  folder_id = "xxxx"
  zone_id   = data.terraform_remote_state.zone.outputs.zone_id
  name      = "test.example.com."
  type      = "A"
  ttl       = 200
  data      = ["10.1.0.1"]
}
