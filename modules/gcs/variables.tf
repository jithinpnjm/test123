variable "buckets" {
  description = "Map of buckets with configuration"
  type = map(object({
    name                        = string
    location                    = string
    storage_class               = string
    uniform_bucket_level_access = bool
    public_access_prevention    = optional(string)
    iam_roles     = list(object({
      role    = string
      members = list(string)
    }))
    lifecycle_rules = optional(list(object({
      action = object({
        type          = string
        storage_class = optional(string)
      })
      condition = object({
        age                   = optional(number)
        created_before        = optional(string)
        with_state            = optional(string)
        matches_storage_class = optional(list(string))
        num_newer_versions    = optional(number)
      })
    })))
  }))
}
variable "project" {
  description = "The project of the buckets"
  type        = string
  default     = ""
}
