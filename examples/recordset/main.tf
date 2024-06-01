module "dns-recordset" {
  source = "../../modules/recordset/"

  folder_id = "xxxx"
  zone_id   = "xxxx"
  name      = "test.example.com."
  type      = "A"
  ttl       = 200
  data      = ["10.1.0.1"]
}
