#
# naming
#
variable "name" {
  description = "The DNS name (FQDN) that this record set will apply to. Can be a subdomain or the zone apex."
  type        = string
}

#
# DNS record
#
variable "zone_name" {
  description = "The name of the DNS zone where this record set will be created. This parameter is ignored if zone_id is specified."
  type        = string
  default     = null
}
variable "zone_id" {
  description = "The ID of the DNS zone where this record set will be created. Takes precedence over zone_name if both are specified."
  type        = string
  default     = null
}

variable "folder_id" {
  description = "The ID of the Yandex Cloud folder where the DNS record will be created. If omitted, the default folder ID from the provider configuration will be used."
  type        = string
  default     = null
}

variable "type" {
  description = "The DNS record type (e.g., A, AAAA, CNAME, MX, TXT, NS). Determines the format and purpose of the record data."
  type        = string
}

variable "ttl" {
  description = "The time-to-live (TTL) value for this record set in seconds. Controls how long DNS resolvers cache this record."
  type        = string
  default     = null
}

variable "data" {
  description = "The list of data values for the DNS records in this record set. Format depends on the record type (e.g., IP addresses for A records, domain names for CNAME records)."
  type        = list(string)
  default     = null
}
