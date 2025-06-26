variable "external_ip_name" {
  description = "Load balancer external IP"
  type        = string
}

variable "protocol_name" {
  description = "Protocol name"
  type        = string
}

variable "port_name" {
  description = "Port name"
  type        = string
}

variable "health_check_id" {
  description = "Health check ID"
  type        = string
}

variable "managed_instance_self_link" {
  description = "MIG self link"
  type        = string
}

variable "url_map_name" {
  description = "url map name"
  type        = string
}

variable "http_proxy_name" {
  description = "https proxy name"
  type        = string
}

variable "forwarding_rule_name" {
  description = "Forwarding rule name"
  type        = string
}

variable "ip_protocol_name" {
  description = "IP protocol name"
  type        = string
}

variable "port_range" {
  description = "Port range"
  type        = string
}

variable "backend_service_name" {
  description = "Backend service name"
  type        = string
}
