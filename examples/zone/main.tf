module "dns-zone" {
  source = "../../modules/zone/"

  folder_id = "xxxx"
  name        = "my-private-zone"
  description = "desc"

  labels = {
    label1 = "label-1-value"
  }

  zone             = "example.com."
  is_public        = false
  private_networks = ["xxxx"]
}
