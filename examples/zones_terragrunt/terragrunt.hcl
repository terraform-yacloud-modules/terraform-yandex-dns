terraform {
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/zones?ref=v1.0.0"
}

inputs = {
  folder_id = "b1g0000000000000000"

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
      private_networks = ["enp000000000000000"]
    }

    "staging.example.com" = {
      description = "Staging environment zone"
      public      = true
    }
  }
}
