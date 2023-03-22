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
variable "zone_id" {
  description = "The id of the zone in which this record set will reside."
  type        = string
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
