variable "vpc_name" {
  description = "Name of the VPC Network"
  type        = string
}

variable "vpc_region" {
  description = "Name of the VPC region"
  type        = string
}

variable "vpc_subnet_cidr" {
  description = "Range of the VPC Network IP"
  type        = string
}

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
}

variable "router_name" {
  description = "Name of the router"
  type        = string
}

variable "nat_name" {
  description = "Name of the Cloud Nat"
  type        = string
}

variable "global_address_name" {
  description = "Name of the global_address"
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

variable "sql_instance_name" {
  description = "Name of the sql_instance_name"
  type        = string
}

variable "instance_template_name" {
  description = "Name of the instance template"
  type        = string
}

variable "target_project_id" {
  description = "Project ID"
  type        = string
}

variable "service_account_email" {
  description = "Service account email"
  type        = string
}

variable "health_check" {
  description = "Health Check"
  type        = string
}

variable "check_interval" {
  description = "Check Internal"
  type        = number
}

variable "time_out" {
  description = "Time Out"
  type        = number
}

variable "healthy_threshold" {
  description = "Healthy Threshold"
  type        = number
}

variable "unhealthy_threshold" {
  description = "Unhealthy Threshold"
  type        = number
}

variable "health_check_port" {
  description = "Health check port"
  type        = number
}

variable "health_check_request_path" {
  description = "Health check request path"
  type        = string
}

variable "server_name" {
  description = "Name of the MIG"
  type        = string
}

variable "port_name" {
  description = "Name of the port"
  type        = string
}

variable "port_number" {
  description = "Port Number"
  type        = number
}

variable "initial_delay_mig" {
  description = "Initial delay of MIG"
  type        = number
}

variable "base_instance_name" {
  description = "Base instance Name"
  type        = string
}

variable "max_replicas" {
  description = "Max number of vm"
  type        = number
}

variable "min_replicas" {
  description = "Min number of vm"
  type        = number
}

variable "external_ip_name" {
  description = "Load balancer external IP"
  type        = string
}

variable "protocol_name" {
  description = "Protocol name"
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

variable "client_id" {
  description = "Oauth2 client id"
  type = string
}

variable "client_secret" {
  description = "Oauth2 client secret"
  type = string
}