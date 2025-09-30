#
# yandex cloud coordinates
#
variable "folder_id" {
  description = "The ID of the Yandex Cloud folder where the DNS zone will be created. If omitted, the default folder ID from the provider configuration will be used."
  type        = string
  default     = null
}

#
# naming
#
variable "name" {
  description = "The user-assigned name of the DNS zone. Must be unique within the folder and helps identify the zone in the Yandex Cloud console."
  type        = string
}

variable "description" {
  description = "An optional description of the DNS zone. Helps document the purpose and usage of the zone."
  type        = string
  default     = ""
}

variable "labels" {
  description = "A set of key-value pairs (labels) to apply to the DNS zone. Useful for organizing, filtering, and managing resources."
  type        = map(string)
  default     = {}
}

#
# DNS Zone
#
variable "zone" {
  description = "The DNS name of the zone (e.g., 'example.com.'). Must end with a dot and represents the domain namespace managed by this zone."
  type        = string
}

variable "is_public" {
  description = "Controls the visibility of the DNS zone. Public zones are accessible from the Internet, while private zones are only visible to resources within the specified VPC networks."
  type        = bool
  default     = false
}

variable "private_networks" {
  description = "For private zones, specifies the list of VPC network IDs where the zone will be visible and accessible. Required when is_public is false."
  type        = list(string)
  default     = []
}
