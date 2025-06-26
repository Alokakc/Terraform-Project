resource "google_compute_health_check" "bookshelf_health_check" {
  name               = var.health_check
  check_interval_sec = var.check_interval
  timeout_sec        = var.time_out
  healthy_threshold  = var.healthy_threshold
  unhealthy_threshold = var.unhealthy_threshold

  http_health_check {
    port         = var.health_check_port
    request_path = var.health_check_request_path
    proxy_header = "NONE"
  }

  log_config {
    enable = false
  }
}
