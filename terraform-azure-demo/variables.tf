variable "resource_group_name" {
  description = "rg-it-cc-tf-2"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "Canada Central"
}