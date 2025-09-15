# Create the Exadata Infrastructure
resource "aws_odb_cloud_exadata_infrastructure" "this" {
  display_name                     = var.exa_infra_display_name
  availability_zone_id             = var.aws_odb_exa_infra_availability_zone_id
  shape                            = var.exa_infra_shape
  database_server_type             = var.exa_infra_shape == "Exadata.X11M" ? "X11M" : null
  storage_server_type              = var.exa_infra_shape == "Exadata.X11M" ? "X11M-HC" : null
  compute_count                    = var.compute_count
  storage_count                    = var.storage_count
  customer_contacts_to_send_to_oci = length(var.customer_contacts_to_send_to_oci) > 0 ? var.customer_contacts_to_send_to_oci : null
  tags                             = var.tags
  maintenance_window               = var.maintenance_window
}