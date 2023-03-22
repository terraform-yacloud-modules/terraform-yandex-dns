#
# yandex cloud coordinates
#
variable "folder_id" {
  description = "Folder-ID where need to add permissions. If omitted default FOLDER_ID will be used"
  type        = string
  default     = null
}

#
# naming
#
variable "name" {
  description = "User assigned name of a DNS resource"
  type        = string
}

variable "description" {
  description = "Description of the DNS zone"
  type        = string
  default     = ""
}

variable "labels" {
  description = "A set of labels which will be applied to all resources"
  type        = map(string)
  default     = {}
}

#
# DNS Zone
#
variable "zone" {
  description = "The DNS name of this zone, e.g. 'example.com.'. Must ends with dot"
  type        = string
}

variable "is_public" {
  description = "The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources"
  type        = bool
  default     = false
}

variable "private_networks" {
  description = "For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from"
  type        = list(string)
  default     = []
}
