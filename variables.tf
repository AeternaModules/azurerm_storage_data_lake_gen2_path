variable "storage_data_lake_gen2_paths" {
  description = <<EOT
Map of storage_data_lake_gen2_paths, attributes below
Required:
    - filesystem_name
    - path
    - resource
    - storage_account_id
Optional:
    - group
    - owner
    - ace (block):
        - id (optional)
        - permissions (required)
        - scope (optional)
        - type (required)
EOT

  type = map(object({
    filesystem_name    = string
    path               = string
    resource           = string
    storage_account_id = string
    group              = optional(string)
    owner              = optional(string)
    ace = optional(list(object({
      id          = optional(string)
      permissions = string
      scope       = optional(string)
      type        = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_data_lake_gen2_paths : (
        contains(["directory"], v.resource)
      )
    ])
    error_message = "must be one of: directory"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_data_lake_gen2_paths : (
        v.owner == null || ((can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.owner))) || (contains(["$superuser"], v.owner)))
      )
    ])
    error_message = "any of: must be a valid UUID; must be one of: $superuser"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_data_lake_gen2_paths : (
        v.group == null || ((can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.group))) || (contains(["$superuser"], v.group)))
      )
    ])
    error_message = "any of: must be a valid UUID; must be one of: $superuser"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_data_lake_gen2_paths : (
        v.ace == null || alltrue([for item in v.ace : (item.scope == null || (contains(["default", "access"], item.scope)))])
      )
    ])
    error_message = "must be one of: default, access"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_data_lake_gen2_paths : (
        v.ace == null || alltrue([for item in v.ace : (contains(["user", "group", "mask", "other"], item.type))])
      )
    ])
    error_message = "must be one of: user, group, mask, other"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_data_lake_gen2_paths : (
        v.ace == null || alltrue([for item in v.ace : (item.id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", item.id))))])
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

