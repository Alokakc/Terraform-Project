output "external_ip_address" {
  description = "The reserved external static IP address"
  value       = google_compute_global_address.external_ip.address
}

output "backend_service_name" {
  description = "The name of the backend service"
  value       = google_compute_backend_service.app_backend.name
}

output "backend_service_self_link" {
  description = "The self link of the backend service"
  value       = google_compute_backend_service.app_backend.self_link
}

output "url_map_name" {
  description = "The name of the URL map"
  value       = google_compute_url_map.app_url_map.name
}

output "url_map_self_link" {
  description = "The self link of the URL map"
  value       = google_compute_url_map.app_url_map.self_link
}

output "http_proxy_name" {
  description = "The name of the HTTP proxy"
  value       = google_compute_target_http_proxy.app_http_proxy.name
}

output "http_proxy_self_link" {
  description = "The self link of the HTTP proxy"
  value       = google_compute_target_http_proxy.app_http_proxy.self_link
}

output "forwarding_rule_name" {
  description = "The name of the forwarding rule"
  value       = google_compute_global_forwarding_rule.app_lb.name
}

output "forwarding_rule_self_link" {
  description = "The self link of the forwarding rule"
  value       = google_compute_global_forwarding_rule.app_lb.self_link
}

output "forwarding_rule_ip_address" {
  description = "The IP address used by the forwarding rule"
  value       = google_compute_global_forwarding_rule.app_lb.ip_address
}
