output "id" {
  description = "ID of the Diagnostic Settings."
  value       = azurerm_monitor_diagnostic_setting.main.id
}

output "name" {
  description = "Name of the Diagnostic Settings."
  value       = azurerm_monitor_diagnostic_setting.main.name
}

output "object" {
  description = "Object of the Diagnostic Settings."
  value       = azurerm_monitor_diagnostic_setting.main
}