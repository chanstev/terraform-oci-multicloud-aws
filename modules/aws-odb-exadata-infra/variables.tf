variable "exa_infra_display_name" {
  description = "Name of the exa infra. Use Ofake to create ofake resource else real exa will be provisioned."
  type        = string
}
variable "aws_odb_exa_infra_availability_zone_id" {
  description = "The Id of the Availability Zone where the Exadata infrastructure is located"
  type        = string
}
variable "exa_infra_shape" {
  description = "The shape model name of the Exadata infrastructure"
  type        = string
}
variable "compute_count" {
  description = "The compute count of the Exadata infrastructure"
  type        = number
  default     = null
}
variable "storage_count" {
  description = "The storage count of the Exadata infrastructure"
  type        = number
  default     = null
}
variable "customer_contacts_to_send_to_oci" {
  description = "The email addresses used by Oracle to send notifications regarding the Exadata infrastructure"
  type        = set(string)
  default     = null
}
variable "tags" {
  description = "Resource tags for the Exadata Infrastructure"
  type        = map(string)
  default     = null
}
variable "maintenance_window" {
  description = "The maintenance window configuration for the Exadata infrastructure"
  type        = object({
    custom_action_timeout_in_mins = number
    days_of_week = set(string)
    hours_of_day = set(number)
    is_custom_action_timeout_enabled = bool
    lead_time_in_weeks = number
    months = set(string)
    patching_mode = string
    preference = string
    skip_ru = bool
    weeks_of_month = set(number)
  })
}
