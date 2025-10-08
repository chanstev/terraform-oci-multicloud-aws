variable "odb_network_id" {
  type        = string
  description = "ID of the ODB Network"
}

variable "peer_network_id" {
  type        = string
  description = "ID of VPC of Peer Network"
}

variable "display_name" {
  type        = string
  description = "Display name of the ODB Peering connection (optional)"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Resource tags for the ODB Peering connection"
  default     = null
}
