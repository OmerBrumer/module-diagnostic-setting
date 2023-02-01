variable "target_resource_id" {
  description = "(Required)The ID of the resource on which activate the diagnostic settings."
  type        = string
}

variable "diagonstic_setting_name" {
  description = "(Required)Diagnostic setting name."
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "(Required)Log_analytics_workspace_id."
  type        = string
}

variable "log_categories" {
  description = "(Optional)List of log categories."
  type        = list(string)
  default     = null
}

variable "metric_categories" {
  description = "(Optional)List of metric categories."
  type        = list(string)
  default     = null
}

variable "retention_days" {
  description = "(Optional)The number of days to keep diagnostic logs."
  type        = number
  default     = 30
}

variable "storage_account_id" {
  description = "(Optional)The ID of the Storage Account where logs should be sent. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "eventhub_authorization_rule_id" {
  description = "(Optional)Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "eventhub_name" {
  description = "(Optional)Specifies the name of the Event Hub where Diagnostics Data should be sent. Changing this forces a new resource to be created."
  type        = string
  default     = null
}