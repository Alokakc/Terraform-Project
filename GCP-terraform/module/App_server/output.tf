output "appserver_mig_name" {
  description = "The name of the regional instance group manager."
  value       = google_compute_region_instance_group_manager.appserver.name
}

output "appserver_mig_self_link" {
  description = "The self link of the regional instance group manager."
  value       = google_compute_region_instance_group_manager.appserver.self_link
}

output "appserver_mig_instance_group" {
  description = "The instance group URL managed by the instance group manager."
  value       = google_compute_region_instance_group_manager.appserver.instance_group
}

output "appserver_mig_region" {
  description = "The region where the instance group manager is deployed."
  value       = google_compute_region_instance_group_manager.appserver.region
}

output "autoscaler_name" {
  description = "The name of the autoscaler."
  value       = google_compute_region_autoscaler.autoscaler.name
}

output "autoscaler_self_link" {
  description = "The self link of the autoscaler."
  value       = google_compute_region_autoscaler.autoscaler.self_link
}
