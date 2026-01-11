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
    ace = optional(object({
      id          = optional(string)
      permissions = string
      scope       = optional(string, "access")
      type        = string
    }))
  }))
}

