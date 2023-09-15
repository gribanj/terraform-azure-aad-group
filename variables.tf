#============================================= RESOURCE

variable "display_name" {
  description = "The display name of the Azure AD group."
  type        = string
}

variable "service_principal_id" {
  description = "The Object ID of the service principal to be added as a member and owner."
  type        = string
}
variable "description" {
  description = "The description for the Azure AD group."
  type        = string
  default     = "" # Optional, in case you want to have a default empty description.
}
#============================================= LOGIC

variable "create" {
  description = "Boolean flag to control whether a new resource should be created"
  type        = bool
  default     = false
}

#============================================= TAGS

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to the resource"
  default = {
    "owner"     = "devops"
    "terraform" = "true"
    "env"       = "prod"
  }
  validation {
    condition     = contains(["prod", "nonprod", "dev", "qa", "stg"], var.tags["env"])
    error_message = "ERROR: The 'env' tag value must be one of the following: 'prod', 'nonprod','qa', 'stg' or 'dev'."
  }
}
