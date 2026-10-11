output "demand_signal_occ_demand_signals_id" {
  description = "Map of id values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no id are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.id if v.id != null && length(v.id) > 0 }
}
output "demand_signal_occ_demand_signals_compartment_id" {
  description = "Map of compartment_id values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no compartment_id are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "demand_signal_occ_demand_signals_defined_tags" {
  description = "Map of defined_tags values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no defined_tags are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "demand_signal_occ_demand_signals_display_name" {
  description = "Map of display_name values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no display_name are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "demand_signal_occ_demand_signals_freeform_tags" {
  description = "Map of freeform_tags values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "demand_signal_occ_demand_signals_is_active" {
  description = "Map of is_active values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no is_active are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.is_active if v.is_active != null }
}
output "demand_signal_occ_demand_signals_lifecycle_details" {
  description = "Map of lifecycle_details values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "demand_signal_occ_demand_signals_occ_demand_signal_id" {
  description = "Map of occ_demand_signal_id values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no occ_demand_signal_id are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.occ_demand_signal_id if v.occ_demand_signal_id != null && length(v.occ_demand_signal_id) > 0 }
}
output "demand_signal_occ_demand_signals_occ_demand_signals" {
  description = "Map of occ_demand_signals values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no occ_demand_signals are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.occ_demand_signals if v.occ_demand_signals != null && length(v.occ_demand_signals) > 0 }
}
output "demand_signal_occ_demand_signals_patch_operations" {
  description = "Map of patch_operations values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no patch_operations are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.patch_operations if v.patch_operations != null && length(v.patch_operations) > 0 }
}
output "demand_signal_occ_demand_signals_state" {
  description = "Map of state values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no state are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.state if v.state != null && length(v.state) > 0 }
}
output "demand_signal_occ_demand_signals_system_tags" {
  description = "Map of system_tags values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no system_tags are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "demand_signal_occ_demand_signals_time_created" {
  description = "Map of time_created values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no time_created are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "demand_signal_occ_demand_signals_time_updated" {
  description = "Map of time_updated values across all demand_signal_occ_demand_signals, keyed the same as var.demand_signal_occ_demand_signals except keys with no time_updated are omitted"
  value       = { for k, v in oci_demand_signal_occ_demand_signal.demand_signal_occ_demand_signals : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

