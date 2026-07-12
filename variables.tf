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
      scope       = optional(string) # Default: "access"
      type        = string
    })))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_storage_data_lake_gen2_path's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: resource
  #   condition: contains(["directory"], value)
  #   message:   must be one of: directory
  # path: owner
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: group
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: ace.scope
  #   condition: contains(["default", "access"], value)
  #   message:   must be one of: default, access
  # path: ace.type
  #   condition: contains(["user", "group", "mask", "other"], value)
  #   message:   must be one of: user, group, mask, other
  # path: ace.id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: ace.permissions
  #   source:    [from validate.ADLSAccessControlPermissions] !ok
  # path: ace.permissions
  #   source:    [from validate.ADLSAccessControlPermissions] err != nil
}

