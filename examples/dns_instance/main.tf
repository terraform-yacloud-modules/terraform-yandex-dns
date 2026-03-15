data "yandex_client_config" "client" {}

module "network" {
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-vpc.git?ref=v1.0.0"

  folder_id  = data.yandex_client_config.client.folder_id
  blank_name = "instance-minimal-vpc-nat-gateway"

  azs = ["ru-central1-a"]

  private_subnets    = [["10.18.0.0/24"]]
  create_vpc         = true
  create_nat_gateway = true
}

module "yandex_compute_instance" {
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-instance.git?ref=v1.0.0"

  folder_id = data.yandex_client_config.client.folder_id

  name = "instance"

  zone       = "ru-central1-a"
  subnet_id  = module.network.private_subnets_ids[0]
  enable_nat = true
  create_pip = true

  hostname         = "instance"
  generate_ssh_key = false
  ssh_user         = "ubuntu"
  ssh_pubkey       = "~/.ssh/id_ed25519.pub"

  user_data = <<-EOF
        #cloud-config
        package_upgrade: true
        packages:
          - nginx
        runcmd:
          - [systemctl, start, nginx]
          - [systemctl, enable, nginx]
        EOF
}

# DNS zone: https://yandex.cloud/ru/docs/terraform/resources/dns_zone
module "dns_zone" {
  source = "../../modules/zone/"
  # source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/zone?ref=v1.0.0"

  folder_id   = data.yandex_client_config.client.folder_id
  name        = "my-private-zone"
  description = "desc"
  labels = {
    environment = "test"
    project     = "terraform-dns"
  }

  zone                = "apatsev.org.ru."
  is_public           = true
  private_networks    = [module.network.vpc_id]
  deletion_protection = false

  timeouts = {
    create = "5m"
    update = "5m"
    delete = "5m"
  }
}

# DNS record set: https://yandex.cloud/ru/docs/terraform/resources/dns_recordset
module "dns_recordset" {
  source = "../../modules/recordset/"
  # source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/recordset?ref=v1.0.0"

  folder_id = data.yandex_client_config.client.folder_id
  zone_id   = module.dns_zone.id
  name      = "test.apatsev.org.ru."
  type      = "A"
  ttl       = 200
  data      = [module.yandex_compute_instance.instance_public_ip]

  timeouts = {
    create = "2m"
    update = "2m"
    delete = "2m"
  }
}
