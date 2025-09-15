# Create the ODB Network Connection
resource "aws_odb_network_peering_connection" "this" {
  odb_network_id  = var.odb_network_id
  peer_network_id = var.peer_network_id
  display_name    = var.display_name
  tags            = var.tags
}
