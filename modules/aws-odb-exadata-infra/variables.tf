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

variable "maintenance_window_custom_action_timeout_in_mins" {
  type        = number
  description = "Maintenance window Custom action timeout in mins"
  default     = null
}

variable "maintenance_window_days_of_week" {
  type        = set(object({
    name = string
  }))
  description = "Maintenance window days of week"
  default     = null
}

variable "maintenance_window_hours_of_day" {
  type        = set(number)
  description = "Maintenance window hours of day"
  default     = null
}

variable "maintenance_window_is_custom_action_timeout_enabled" {
  type        = bool
  description = "Whether custom action timeout is enabled for the maintenance window"
  default     = false
}

variable "maintenance_window_lead_time_in_weeks" {
  type        = number
  description = "Maintenance window lead time in weeks"
  default     = null
}

variable "maintenance_window_months" {
  type        = set(object({
    name = string
  }))
  description = "Maintenance window months"
  default     = null
}

variable "maintenance_window_patching_mode" {
  type        = string
  description = "Maintenance window patching mode"
  default     = null
}

variable "maintenance_window_preference" {
  type        = string
  description = "Maintenance window preference"
}


variable "maintenance_window_weeks_of_month" {
  type        = set(number)
  description = "Maintenance window weeks of month"
  default     = null
}
