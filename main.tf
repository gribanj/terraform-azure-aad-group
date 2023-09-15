resource "azuread_group" "aad_group" {
  display_name            = var.display_name
  security_enabled        = true
  prevent_duplicate_names = true
  description             = var.description
  members = [
    data.azuread_client_config.current.object_id,
    var.service_principal_id,
  ]
  owners = [
    var.service_principal_id,
    data.azuread_client_config.current.object_id
  ]
}
