variable "global_address_name" {
  description = "Name of the global_address"
  type        = string
}

variable "network" {
  description = "Name of the global_address"
  type        = string
}

variable "vpc_self_link" {
  description = "The self_link of the VPC network"
  type        = string
}

variable "sql_instance_name" {
  description = "Name of the sql_instance_name"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}

variable "zone" {
  description = "Zone"
  type        = string
}

variable "database_name" {
  description = "Name of the database"
  type        = string
}

variable "database_user_name" {
  description = "Name of the database_user"
  type        = string
}

variable "user_password" {
  description = "User password"
  type        = string
}

