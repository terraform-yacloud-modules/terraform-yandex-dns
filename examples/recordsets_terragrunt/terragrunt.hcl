terraform {
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/recordsets?ref=v1.0.0"
}

inputs = {
  folder_id = "b1g0000000000000000"
  zone_name = "my-zone"

  records = [
    {
      name = "web"
      type = "A"
      ttl  = 300
      data = ["10.0.0.1", "10.0.0.2"]
    },
    {
      name = "mail"
      type = "A"
      ttl  = 600
      data = ["10.0.0.10"]
    },
    {
      name = ""
      type = "MX"
      ttl  = 3600
      data = ["10 mail.example.com."]
    },
    {
      name = ""
      type = "TXT"
      ttl  = 3600
      data = ["\"v=spf1 include:_spf.example.com ~all\""]
    },
    {
      name = "www"
      type = "CNAME"
      ttl  = 300
      data = ["web.example.com."]
    },
  ]

  timeouts = {
    create = "2m"
    update = "2m"
    delete = "2m"
  }
}
