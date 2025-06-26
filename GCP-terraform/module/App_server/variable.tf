variable "server_name" {
  description = "Name of the MIG"
  type = string
}

variable "region" {
  description = "Zone of the MIG"
  type = string
}

variable "instance_template_self_link" {
  description = "Instance template self link"
  type = string
}

variable "port_name" {
  description = "Name of the port"
  type = string
}

variable "port_number" {
  description = "Port Number"
  type = number
}

variable "health_check_id" {
  description = "Health check ID"
  type = string
}

variable "initial_delay_mig" {
  description = "Initial delay of MIG"
  type = number
}

variable "base_instance_name" {
  description = "Base instance Name"
  type = string
}

variable "max_replicas" {
  description = "Max number of vm"
  type = number
}

variable "min_replicas" {
  description = "Min number of vm"
  type = number
}