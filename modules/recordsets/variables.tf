#
# DNS record
#
variable "zone_name" {
  description = "The name of the zone in which this record set will reside; Skipped if zone_id is set"
  type        = string
  default     = null
}

variable "zone_id" {
  description = "The id of the zone in which this record set will reside"
  type        = string
  default     = null
}

variable "folder_id" {
  description = "Folder ID in which this record will be created"
  type        = string
  default     = null
}

variable "records" {
  description = "List of objects of DNS records"
  type = list(object({
    key            = optional(string)
    name           = string
    type           = string
    ttl            = optional(number, 300)
    data           = optional(list(string))
    set_identifier = optional(string)
  }))
  default = []
}

variable "records_jsonencoded" {
  description = "List of map of DNS records (stored as jsonencoded string, for terragrunt)"
  type        = string
  default     = null
}

variable "timeouts" {
  description = "Timeout settings for create/update/delete operations on DNS record sets"
  type = object({
    create = optional(string)
    update = optional(string)
    delete = optional(string)
  })
  default = null
}
