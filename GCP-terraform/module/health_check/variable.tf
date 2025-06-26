variable "health_check" {
  description = "Health Check"
  type = string
}

variable "check_interval" {
  description = "Check Internal"
  type = number
}

variable "time_out" {
  description = "Time Out"
  type = number
}

variable "healthy_threshold" {
  description = "Healthy Threshold"
  type = number
}

variable "unhealthy_threshold" {
  description = "Unhealthy Threshold"
  type = number
}

variable "health_check_port" {
  description = "Health check port"
  type = number
}

variable "health_check_request_path" {
  description = "Health check request path"
  type = string
}