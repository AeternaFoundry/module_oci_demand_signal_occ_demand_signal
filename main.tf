resource "oci_demand_signal_occ_demand_signal" "demand_signal_occ_demand_signals" {
  for_each = var.demand_signal_occ_demand_signals

  compartment_id       = each.value.compartment_id
  is_active            = each.value.is_active
  defined_tags         = each.value.defined_tags
  display_name         = each.value.display_name
  freeform_tags        = each.value.freeform_tags
  occ_demand_signal_id = each.value.occ_demand_signal_id

  dynamic "occ_demand_signals" {
    for_each = each.value.occ_demand_signals
    content {
      resource_type = occ_demand_signals.value.resource_type
      units         = occ_demand_signals.value.units
      dynamic "values" {
        for_each = occ_demand_signals.value.values
        content {
          comments      = values.value.comments
          time_expected = values.value.time_expected
          value         = values.value.value
        }
      }
    }
  }

  dynamic "patch_operations" {
    for_each = each.value.patch_operations != null ? each.value.patch_operations : []
    content {
      from          = patch_operations.value.from
      operation     = patch_operations.value.operation
      position      = patch_operations.value.position
      selected_item = patch_operations.value.selected_item
      selection     = patch_operations.value.selection
      value         = patch_operations.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

