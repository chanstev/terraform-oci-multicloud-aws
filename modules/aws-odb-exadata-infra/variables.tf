variable "exa_infra_display_name" {
  description = "Name of the Exadata infrastructure."
  type        = string
}
variable "aws_odb_exa_infra_availability_zone_id" {
  description = "The Id of the Availability Zone where the Exadata infrastructure is located"
  type        = string
}
variable "exa_infra_shape" {
  description = "The shape model name of the Exadata infrastructure, default is Exadata.X11M"
  type        = string
  default     = "Exadata.X11M"
}
variable "compute_count" {
  description = "The compute count of the Exadata infrastructure, default is 2"
  type        = number
  default     = 2
}
variable "storage_count" {
  description = "The storage count of the Exadata infrastructure, default is 3"
  type        = number
  default     = 3
}
variable "customer_contacts_to_send_to_oci" {
  description = "The email addresses used by Oracle to send notifications regarding the Exadata infrastructure"
  type        = set(object({
    email = string
  }))
  default     = null
}
variable "tags" {
  description = "Resource tags for the Exadata Infrastructure"
  type        = map(string)
  default     = null
}

variable "maintenance_window" {
  description = "Maintenance window configuration for the Exadata Infrastructure"
  type = object({
    patching_mode                    = string
    preference                       = string
    is_custom_action_timeout_enabled = bool
    custom_action_timeout_in_mins    = number
    days_of_week = optional(set(object(
      { name = string }
    )))
    hours_of_day       = optional(set(number))
    lead_time_in_weeks = optional(number)
    months = optional(set(object(
      { name = string }
    )))
    weeks_of_month = optional(set(number))
  })
  default = {
    patching_mode                    = "ROLLING"
    preference                       = "NO_PREFERENCE"
    is_custom_action_timeout_enabled = false
    custom_action_timeout_in_mins    = 15
  }
}