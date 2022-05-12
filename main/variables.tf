variable "location" {
  description = "location wher the resources will be created"
  type = string
  default     = "uksouth"
}

variable "tags" {
  description = "tags for the resources"
  type = map(string)
  default = {
        "environment"  = "dev"
        "source" = "terraaform"
  }
}
variable "rg_name" {
  description = "name of the resource"
  type = string
  default     = "sandeep_rg"
} 
 variable "project_name" {
  description = "name of the resource_group"
  type = string
  default     = "chat"
}   