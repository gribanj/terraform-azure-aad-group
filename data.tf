data "azuread_client_config" "current" {}

data "azuread_group" "existing_aad_group" {
  count            = var.create ? 0 : 1
  display_name     = var.display_name
  security_enabled = true
}
