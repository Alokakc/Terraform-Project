output "vpc_name" {
  description = "Name of the VPC network"
  value       = google_compute_network.vpc_network.name
}

output "vpc_id" {
  description = "ID of the VPC network"
  value       = google_compute_network.vpc_network.id
}

output "subnet_name" {
  description = "Name of the subnet"
  value       = google_compute_subnetwork.subnet.name
}

output "subnet_ip_cidr_range" {
  description = "CIDR range of the subnet"
  value       = google_compute_subnetwork.subnet.ip_cidr_range
}

output "firewall_allow_ssh_name" {
  description = "Firewall rule for SSH"
  value       = google_compute_firewall.allow_ssh.name
}

output "firewall_allow_lb_health_check_name" {
  description = "Firewall rule for LB health check"
  value       = google_compute_firewall.allow_lb_health_check.name
}

output "vpc_self_link" {
    description = "self_link of the vpc network"
    value = google_compute_network.vpc_network.self_link
}
