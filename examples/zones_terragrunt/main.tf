data "yandex_client_config" "client" {}

module "network" {
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-vpc.git?ref=v1.0.0"

  folder_id  = data.yandex_client_config.client.folder_id
  blank_name = "dns-zones-vpc"

  azs = ["ru-central1-a"]

  private_subnets    = [["10.18.0.0/24"]]
  create_vpc         = true
  create_nat_gateway = true
}

module "dns_zones" {
  source = "../../modules/zones/"
  # source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/zones?ref=v1.0.0"

  folder_id = data.yandex_client_config.client.folder_id

  labels = {
    environment = "production"
    managed_by  = "terragrunt"
  }

  zones = {
    "example.com" = {
      description         = "Public zone for example.com"
      public              = true
      deletion_protection = true
      labels = {
        purpose = "main-domain"
      }
      timeouts = {
        create = "5m"
        update = "5m"
        delete = "5m"
      }
    }

    "internal.example.com" = {
      name             = "internal-zone"
      description      = "Private zone for internal services"
      public           = false
      private_networks = [module.network.vpc_id]
    }

    "staging.example.com" = {
      description = "Staging environment zone"
      public      = true
    }
  }
}
