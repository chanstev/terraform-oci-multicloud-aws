locals  {
  # Determine if display_name is provided
  is_display_name_provided = var.display_name != null && var.display_name != ""
}

# Create the ODB Peering Connection
resource "aws_odb_network_peering_connection" "this" {
  # Generate a name if not provided, aligning with AWS Console behavior
  display_name    = local.is_display_name_provided ? var.display_name : "odbpcx-${var.peer_network_id}"
  odb_network_id  = var.odb_network_id
  peer_network_id = var.peer_network_id
  tags            = var.tags
}
