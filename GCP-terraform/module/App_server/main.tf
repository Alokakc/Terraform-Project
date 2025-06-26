resource "google_compute_region_instance_group_manager" "appserver" {
  name               = var.server_name
  base_instance_name = var.base_instance_name
  region             = var.region
  target_size = 1

  version {
    instance_template = var.instance_template_self_link
  }

  named_port {
    name = var.port_name
    port = var.port_number
  }

  auto_healing_policies {
    health_check      = var.health_check_id
    initial_delay_sec = var.initial_delay_mig
  }

  distribution_policy_zones = ["us-central1-a", "us-central1-b", "us-central1-c"]

  update_policy {
    type           = "PROACTIVE"
    minimal_action = "REPLACE"
    max_surge_fixed = 3
    max_unavailable_fixed = 3
  }

}

resource "google_compute_region_autoscaler" "autoscaler" {
  name   = "${var.base_instance_name}-autoscaler"
  region = var.region
  target = google_compute_region_instance_group_manager.appserver.id
 
  autoscaling_policy {
    max_replicas    = var.max_replicas
    min_replicas    = var.min_replicas
    cooldown_period = 60
 
    cpu_utilization {
      target = 0.6
    }
  }
}
