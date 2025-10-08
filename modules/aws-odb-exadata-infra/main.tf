# Create the Exadata Infrastructure
resource "aws_odb_cloud_exadata_infrastructure" "this" {
  display_name                     = var.exa_infra_display_name
  availability_zone_id             = var.aws_odb_exa_infra_availability_zone_id
  shape                            = var.exa_infra_shape
  database_server_type             = var.exa_infra_shape == "Exadata.X11M" ? "X11M" : null
  storage_server_type              = var.exa_infra_shape == "Exadata.X11M" ? "X11M-HC" : null
  compute_count                    = var.compute_count
  storage_count                    = var.storage_count
  customer_contacts_to_send_to_oci = var.customer_contacts_to_send_to_oci == "" ? null: var.customer_contacts_to_send_to_oci
  tags                             = var.tags
  maintenance_window {
    patching_mode                    = var.maintenance_window.patching_mode
    preference                       = var.maintenance_window.preference
    lead_time_in_weeks               = var.maintenance_window.lead_time_in_weeks
    is_custom_action_timeout_enabled = var.maintenance_window.is_custom_action_timeout_enabled
    custom_action_timeout_in_mins    = var.maintenance_window.custom_action_timeout_in_mins
    days_of_week                     = var.maintenance_window.days_of_week
    hours_of_day                     = var.maintenance_window.hours_of_day
    months                           = var.maintenance_window.months
    weeks_of_month                   = var.maintenance_window.weeks_of_month
  }
}