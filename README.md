<!-- BEGIN_TF_DOCS -->

# Azure Monitor Diagnostic Setting and Diagnostic Setting module

## Examples
```hcl
module "diagnostic_settings" {
  source = "../../monitoring/diagnostic_settings"

  diagonstic_setting_name    = "brumer-final-terraform-workspoke-vm-diagnostic-setting"
  log_analytics_workspace_id = "/subscriptions/d94fe338-52d8-4a44-acd4-4f8301adf2cf/resourcegroups/brumer-final-terraform-hub-rg/providers/microsoft.operationalinsights/workspaces/brumer-final-terraform-hub-log-analytics"
  target_resource_id         = "/subscriptions/d94fe338-52d8-4a44-acd4-4f8301adf2cf/resourceGroups/brumer-final-terraform-workspoke-rg/providers/Microsoft.Compute/virtualMachines/brumer-final-terraform-workspoke-vm"
}
```

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | ID of the Diagnostic Settings. |
| <a name="output_name"></a> [name](#output\_name) | Name of the Diagnostic Settings. |
| <a name="output_object"></a> [object](#output\_object) | Object of the Diagnostic Settings. |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_diagonstic_setting_name"></a> [diagonstic\_setting\_name](#input\_diagonstic\_setting\_name) | (Required)Diagnostic setting name. | `string` | n/a | yes |
| <a name="input_target_resource_id"></a> [target\_resource\_id](#input\_target\_resource\_id) | (Required)The ID of the resource on which activate the diagnostic settings. | `string` | n/a | yes |
| <a name="input_eventhub_authorization_rule_id"></a> [eventhub\_authorization\_rule\_id](#input\_eventhub\_authorization\_rule\_id) | (Optional)Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_eventhub_name"></a> [eventhub\_name](#input\_eventhub\_name) | (Optional)Specifies the name of the Event Hub where Diagnostics Data should be sent. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_log_analytics_destination_type"></a> [log\_analytics\_destination\_type](#input\_log\_analytics\_destination\_type) | (Optional)When set to 'Dedicated' logs sent to a Log Analytics workspace will go into resource specific tables, instead of the legacy AzureDiagnostics table. | `string` | `"AzureDiagnostics"` | no |
| <a name="input_log_analytics_workspace_id"></a> [log\_analytics\_workspace\_id](#input\_log\_analytics\_workspace\_id) | (Optional)Log\_analytics\_workspace\_id. | `string` | `null` | no |
| <a name="input_log_categories"></a> [log\_categories](#input\_log\_categories) | (Optional)List of log categories. | `list(string)` | `null` | no |
| <a name="input_metric_categories"></a> [metric\_categories](#input\_metric\_categories) | (Optional)List of metric categories. | `list(string)` | `null` | no |
| <a name="input_retention_days"></a> [retention\_days](#input\_retention\_days) | (Optional)The number of days to keep diagnostic logs. | `number` | `30` | no |
| <a name="input_storage_account_id"></a> [storage\_account\_id](#input\_storage\_account\_id) | (Optional)The ID of the Storage Account where logs should be sent. Changing this forces a new resource to be created. | `string` | `null` | no |



# Authors
Originally created by Omer Brumer
<!-- END_TF_DOCS -->