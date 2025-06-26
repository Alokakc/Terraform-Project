provider "google" {
  credentials = file("./gcp-2021-2-bookshelf-kumar-tf-2d1ed88aee4c.json")
  project     = "gcp-2021-2-bookshelf-kumar-tf"
  region      = "us-central1"
  zone        = "us-central1-a"
}

module "vpc_network" {
  source      = "./module/vpc"
  vpc         = var.vpc_name
  region      = var.vpc_region
  subnet_cidr = var.vpc_subnet_cidr
}

module "cloud-nat" {
  source        = "./module/cloud_NAT"
  vpc_self_link = module.vpc_network.vpc_self_link
  region        = var.vpc_region
  router        = var.router_name
  nat           = var.nat_name
  depends_on    = [module.vpc_network]
}

module "bucket_storage" {
  source = "./module/storage_bucket"
  bucket = var.bucket_name
}

module "cloud_sql" {
  source              = "./module/sql_instance"
  network             = module.vpc_network.vpc_id
  global_address_name = var.global_address_name
  vpc_self_link       = module.vpc_network.vpc_self_link
  sql_instance_name   = var.sql_instance_name
  region              = var.vpc_region
  zone                = var.zone
  database_name       = var.database_name
  database_user_name  = var.database_user_name
  user_password       = var.user_password
}

module "health_check" {
  source                    = "./module/health_check"
  health_check              = var.health_check
  check_interval            = var.check_interval
  time_out                  = var.time_out
  healthy_threshold         = var.healthy_threshold
  unhealthy_threshold       = var.unhealthy_threshold
  health_check_port         = var.health_check_port
  health_check_request_path = var.health_check_request_path
}

module "instance_template" {
  source                 = "./module/instance_template"
  instance_template_name = var.instance_template_name
  target_project_id      = var.target_project_id
  region                 = var.vpc_region
  network                = var.vpc_name
  subnetwork             = module.vpc_network.subnet_name
  service_account_email  = var.service_account_email
  database_name          = var.database_name
  database_user_name     = var.database_user_name
  user_password          = var.user_password
  bucket_name            = var.bucket_name
  connection_name        = module.cloud_sql.sql_instance_connection_name
  client_id              = var.client_id
  client_secret          = var.client_secret
}

module "app_server" {
  source                      = "./module/App_server"
  server_name                 = var.server_name
  region                      = var.vpc_region
  instance_template_self_link = module.instance_template.instance_template_self_link
  port_name                   = var.port_name
  port_number                 = var.port_number
  health_check_id             = module.health_check.bookshelf_health_check_id
  initial_delay_mig           = var.initial_delay_mig
  base_instance_name          = var.base_instance_name
  max_replicas                = var.max_replicas
  min_replicas                = var.min_replicas
}

module "load_balancer" {
  source                     = "./module/load balancer"
  external_ip_name           = var.external_ip_name
  protocol_name              = var.protocol_name
  port_name                  = var.port_name
  health_check_id            = module.health_check.bookshelf_health_check_id
  managed_instance_self_link = module.app_server.appserver_mig_instance_group
  url_map_name               = var.url_map_name
  http_proxy_name            = var.http_proxy_name
  forwarding_rule_name       = var.forwarding_rule_name
  ip_protocol_name           = var.ip_protocol_name
  port_range                 = var.port_range
  backend_service_name       = var.backend_service_name
}











