variable "instance_template_name" {
  description = "Name of the instance template"
  type = string
}

variable "target_project_id" {
  description = "Project ID"
  type = string
}

variable "region" {
  description = "region"
  type = string
}

variable "network" {
  description = "Name of the vpc network"
  type = string
}

variable "subnetwork" {
  description = "Name of the subnetwork"
  type = string
}

variable "service_account_email" {
  description = "Service account email"
  type = string
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

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
}

variable "connection_name" {
  type        = string
  description = "Cloud SQL connection name"
}

variable "client_id" {
  description = "Oauth2 client id"
  type = string
}

variable "client_secret" {
  description = "Oauth2 client secret"
  type = string
}
