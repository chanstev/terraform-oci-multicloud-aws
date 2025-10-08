locals  {
  # Determine if display_name is provided
  is_display_name_provided = var.display_name != null && var.display_name != ""
}

# Generate a random suffix if display_name is not provided
resource "random_string" "odbpc_suffix" {
  count = local.is_display_name_provided ? 0 : 1
  length           = 10
  special          = false
  upper            = false 
}

# Create the ODB Network Connection
resource "aws_odb_network_peering_connection" "this" {
  # Generate a name if not provided, aligning with AWS Console behavior
  display_name    = local.is_display_name_provided ? var.display_name : "odbpcx-${random_string.odbpc_suffix[0].result}"
  odb_network_id  = var.odb_network_id
  peer_network_id = var.peer_network_id
  tags            = var.tags
}
