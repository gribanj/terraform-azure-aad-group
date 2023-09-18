resource "azuread_group" "aad_group" {
  display_name            = var.display_name
  security_enabled        = true
  prevent_duplicate_names = true
  description             = var.description
  members = toset(concat(
    [data.azuread_client_config.current.object_id, ],
    var.additional_members
  ))
  owners = [
    data.azuread_client_config.current.object_id,
  ]
}
