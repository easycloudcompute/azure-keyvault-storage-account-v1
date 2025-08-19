variable "rg_location" {
  description = "Resource Group"
  type        = string
  default     = "canadacentral"
}

variable "keyvault_location" {
  type    = string
  default = "canadaeast"
}

variable "sa_1_location" {
  type    = string
  default = "canadacentral"
}

variable "sa_2_location" {
  type    = string
  default = "canadaeast"
}

variable "replication_sa_1" {
  type    = string
  default = "LRS"
}

variable "replication_sa_2" {
  type    = string
  default = "RAGRS"
}