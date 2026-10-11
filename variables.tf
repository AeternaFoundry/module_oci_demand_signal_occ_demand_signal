variable "demand_signal_occ_demand_signals" {
  description = <<EOT
Map of demand_signal_occ_demand_signals, attributes below
Required:
    - compartment_id
    - is_active
    - occ_demand_signals (block):
        - resource_type (required)
        - units (required)
        - values (required, block):
            - comments (optional)
            - time_expected (required)
            - value (required)
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - occ_demand_signal_id
    - patch_operations (block):
        - from (required)
        - operation (required)
        - position (optional)
        - selected_item (optional)
        - selection (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id       = string
    is_active            = bool
    defined_tags         = optional(map(string))
    display_name         = optional(string)
    freeform_tags        = optional(map(string))
    occ_demand_signal_id = optional(string)
    occ_demand_signals = list(object({
      resource_type = string
      units         = string
      values = list(object({
        comments      = optional(string)
        time_expected = string
        value         = number
      }))
    }))
    patch_operations = optional(list(object({
      from          = string
      operation     = string
      position      = optional(string)
      selected_item = optional(string)
      selection     = string
      value         = map(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.demand_signal_occ_demand_signals : (
        length(v.occ_demand_signals) >= 1
      )
    ])
    error_message = "Each occ_demand_signals list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.demand_signal_occ_demand_signals : (
        alltrue([for item in v.occ_demand_signals : (length(item.values) >= 1)])
      )
    ])
    error_message = "Each values list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.demand_signal_occ_demand_signals : (
        v.patch_operations == null || alltrue([for item in v.patch_operations : (contains([for v in ["INSERT", "INSERT_MULTIPLE", "MERGE", "MOVE", "PROHIBIT", "REMOVE", "REPLACE", "REQUIRE"] : lower(v)], lower(item.operation)))])
      )
    ])
    error_message = "must be one of: \"INSERT\", \"INSERT_MULTIPLE\", \"MERGE\", \"MOVE\", \"PROHIBIT\", \"REMOVE\", \"REPLACE\", \"REQUIRE\""
  }
}

