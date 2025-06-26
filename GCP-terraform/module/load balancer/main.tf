resource "google_compute_global_address" "external_ip" {
  name        = var.external_ip_name
  description = "Static global external IP for my application"
}

resource "google_compute_backend_service" "app_backend" {
  name                  = var.backend_service_name
  protocol              = var.protocol_name
  port_name             = var.port_name
  load_balancing_scheme = "EXTERNAL"
  health_checks         = [var.health_check_id]

  backend {
    group = var.managed_instance_self_link
    max_utilization = 0.8
    capacity_scaler = 1.0
  }
}

resource "google_compute_url_map" "app_url_map" {
  name            = var.url_map_name
  default_service = google_compute_backend_service.app_backend.id
}

resource "google_compute_target_http_proxy" "app_http_proxy" {
  name    = var.http_proxy_name
  url_map = google_compute_url_map.app_url_map.id
}

resource "google_compute_global_forwarding_rule" "app_lb" {
  name                  = var.forwarding_rule_name
  load_balancing_scheme = "EXTERNAL"
  ip_protocol           = var.ip_protocol_name
  port_range            = var.port_range
  target                = google_compute_target_http_proxy.app_http_proxy.id
  # For HTTPS, use:
  # target                = google_compute_target_https_proxy.app_https_proxy.id
  ip_address = google_compute_global_address.external_ip.address
}
