variable "replication_type" {
  type = string
}

variable "environment_name" {
  type = string
}

variable "primary_location" {
  type = string
}

variable "public_network_access_enabled" {
  type = bool
}

variable "tags" {
  type = map(string)
}
