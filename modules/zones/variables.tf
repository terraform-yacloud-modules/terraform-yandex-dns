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
  type        = any
  default     = {}
}

variable "labels" {
  description = "A set of labels which will be applied to all resources"
  type        = map(string)
  default     = {}
}
