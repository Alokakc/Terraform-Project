vpc_name        = "custom-vpc"
vpc_region      = "us-central1"
vpc_subnet_cidr = "10.1.0.0/24"

bucket_name = "tf-bookshelf-alok-kumar"

router_name = "bookshelf-nat-router"
nat_name    = "bookshelf-nat-config"

global_address_name = "google-managed-services-default"

zone = "us-central1-a"

database_name      = "bookshelf"
database_user_name = "admin-bookshelf"
user_password      = "12345678" # replace with secure secret or reference

sql_instance_name = "bookshelf-mysql-instance"

instance_template_name = "bookshelf-instance-template"

target_project_id     = "gcp-2021-2-bookshelf-kumar-tf"
service_account_email = "custom-terraform-service-accou@gcp-2021-2-bookshelf-kumar-tf.iam.gserviceaccount.com"

health_check              = "bookshelf-health-check"
check_interval            = 30
time_out                  = 10
healthy_threshold         = 2
unhealthy_threshold       = 2
health_check_port         = 8080
health_check_request_path = "/_ah/health"

server_name        = "bookshelf-managed-instance-group"
port_name          = "http"
port_number        = 8080
initial_delay_mig  = 900
base_instance_name = "bookshelf-vm"
max_replicas       = 2
min_replicas       = 1

external_ip_name     = "lb-external-ip"
protocol_name        = "HTTP"
url_map_name         = "bookshelf-url-map"
http_proxy_name      = "bookshelf-http-proxy"
forwarding_rule_name = "bookshelf-lb-forwarding-rule"
ip_protocol_name     = "TCP"
port_range           = "80"
backend_service_name = "bookshelf-backend-service"

client_id = "993898936386-qf6ia7agt4tf964b6pjegkk7u4vgos88.apps.googleusercontent.com"
client_secret = "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"
