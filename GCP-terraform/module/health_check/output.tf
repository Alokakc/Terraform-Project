output "bookshelf_health_check_id" {
  value       = google_compute_health_check.bookshelf_health_check.id
  description = "The ID of the health check."
}

output "bookshelf_health_check_self_link" {
  value       = google_compute_health_check.bookshelf_health_check.self_link
  description = "The self-link of the health check."
}
