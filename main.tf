/**
* # Azure Monitor Diagnostic Setting and Diagnostic Setting module
*/

locals {
  log_categories    = (var.log_categories != null ? var.log_categories : try(data.azurerm_monitor_diagnostic_categories.main.log_category_types, []))
  metric_categories = (var.metric_categories != null ? var.metric_categories : try(data.azurerm_monitor_diagnostic_categories.main.metrics, []))
  logs = {
    for category in try(data.azurerm_monitor_diagnostic_categories.main.log_category_types, []) : category => {
      enabled        = contains(local.log_categories, category)
      retention_days = var.retention_days
    }
  }

  metrics = {
    for metric in try(data.azurerm_monitor_diagnostic_categories.main.metrics, []) : metric => {
      enabled        = contains(local.metric_categories, metric)
      retention_days = var.retention_days
    }
  }
}

data "azurerm_monitor_diagnostic_categories" "main" {
  resource_id = var.target_resource_id
}

resource "azurerm_monitor_diagnostic_setting" "main" {
  name                       = var.diagonstic_setting_name
  target_resource_id         = var.target_resource_id
  log_analytics_workspace_id = var.log_analytics_workspace_id

  dynamic "log" {
    for_each = local.logs

    content {
      category = log.key
      enabled  = log.value.enabled

      retention_policy {
        enabled = log.value.enabled && log.value.retention_days != null
        days    = log.value.enabled ? log.value.retention_days : 0
      }
    }
  }

  dynamic "metric" {
    for_each = local.metrics

    content {
      category = metric.key
      enabled  = metric.value.enabled

      retention_policy {
        enabled = metric.value.enabled && metric.value.retention_days != null
        days    = metric.value.enabled ? metric.value.retention_days : 0
      }
    }
  }

  lifecycle {
    ignore_changes = [log_analytics_destination_type]
  }
}