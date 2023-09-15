# Azure AD Group Terraform Module

This module creates an Azure Active Directory group with specific members and owners.

## Usage:

```hcl
module "aad-group" {
  source             = "./modules/aad-group"
  display_name       = "your-display-name-here"
  description        = "your-description-here"
 service_principal_id = "your-service-principal-object-id-here"
}
```

## Inputs:

- `display_name`: The display name of the Azure AD group.
- `service_principal_id`: The Object ID of the service principal to be added as a member and owner.

## Outputs:

- `aad_group_id`: The Object ID of the created Azure AD group.
- `aad_group_name`: The display name of the created Azure AD group.

vbnetCopy code

This provides a clean separation and makes the module easy to understand and reuse. You can then use this module in different configurations by simply providing different input variables.

Make sure to adjust paths and naming according to your project's specific structure and naming conventions.

```

```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_group.aad_group](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) | resource |
| [azuread_client_config.current](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/client_config) | data source |
| [azuread_group.existing_aad_group](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Boolean flag to control whether a new resource should be created | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | The description for the Azure AD group. | `string` | `""` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | The display name of the Azure AD group. | `string` | n/a | yes |
| <a name="input_service_principal_id"></a> [service\_principal\_id](#input\_service\_principal\_id) | The Object ID of the service principal to be added as a member and owner. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to the resource | `map(string)` | <pre>{<br>  "env": "prod",<br>  "owner": "devops",<br>  "terraform": "true"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->