variable "location" {
  description = "The supported azure location where the resource deployed"
  type        = string
}

variable "env" {
  description = "The name of the environment to be deployed"
  type        = string
}

variable "target_tenant_id" {
  description = "The target tenant id"
  type        = string
}

variable "target_subscription_id" {
  description = "The target subscription id"
  type        = string
}
