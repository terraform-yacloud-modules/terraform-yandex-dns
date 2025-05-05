#
# naming
#
variable "name" {
  description = "The DNS name this record set will apply to"
  type        = string
}

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

variable "type" {
  description = "The DNS record set type"
  type        = string
}

variable "ttl" {
  description = "The time-to-live of this record set (seconds)"
  type        = string
  default     = null
}

variable "data" {
  description = "The string data for the records in this record set"
  type        = list(string)
  default     = null
}

variable "records" {
  description = "List of objects of DNS records"
  type        = any
  default     = []
}

variable "records_jsonencoded" {
  description = "List of map of DNS records (stored as jsonencoded string, for terragrunt)"
  type        = string
  default     = null
}
