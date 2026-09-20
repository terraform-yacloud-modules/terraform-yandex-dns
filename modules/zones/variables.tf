variable "folder_id" {
  description = "Folder-ID where need to add permissions. If omitted default FOLDER_ID will be used"
  type        = string
  default     = null
}

variable "create" {
  description = "Whether to create DNS zone"
  type        = bool
  default     = true
}

variable "zones" {
  description = "Map of DNS zone parameters"
  type = map(object({
    name                = optional(string)
    description         = optional(string)
    zone                = optional(string)
    folder_id           = optional(string)
    public              = optional(bool, false)
    private_networks    = optional(list(string), [])
    labels              = optional(map(string), {})
    deletion_protection = optional(bool, false)
    timeouts = optional(object({
      create = optional(string)
      update = optional(string)
      delete = optional(string)
    }))
  }))
  default = {}
}

variable "labels" {
  description = "A set of labels which will be applied to all resources"
  type        = map(string)
  default     = {}
}
