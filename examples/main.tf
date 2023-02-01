module "diagnostic_settings" {
  source = "../../monitoring/diagnostic_settings"

  diagonstic_setting_name    = "brumer-final-terraform-workspoke-vm-diagnostic-setting"
  log_analytics_workspace_id = "/subscriptions/d94fe338-52d8-4a44-acd4-4f8301adf2cf/resourcegroups/brumer-final-terraform-hub-rg/providers/microsoft.operationalinsights/workspaces/brumer-final-terraform-hub-log-analytics"
  target_resource_id         = "/subscriptions/d94fe338-52d8-4a44-acd4-4f8301adf2cf/resourceGroups/brumer-final-terraform-workspoke-rg/providers/Microsoft.Compute/virtualMachines/brumer-final-terraform-workspoke-vm"
}