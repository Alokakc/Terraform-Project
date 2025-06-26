output "sql_instance_connection_name" {
  description = "The connection name of the Cloud SQL instance"
  value       = google_sql_database_instance.bookshelf_mysql_instance.connection_name
}

output "sql_instance_self_link" {
  description = "The self link of the Cloud SQL instance"
  value       = google_sql_database_instance.bookshelf_mysql_instance.self_link
}

output "sql_database_name" {
  description = "The name of the created SQL database"
  value       = google_sql_database.bookshelf.name
}

output "sql_user_name" {
  description = "The name of the SQL user created"
  value       = google_sql_user.root_user.name
}

output "vpc_peering_range_name" {
  description = "The name of the reserved IP range for VPC peering"
  value       = google_compute_global_address.private_ip_alloc.name
}

output "vpc_peering_connection_id" {
  description = "The ID of the VPC peering connection"
  value       = google_service_networking_connection.private_vpc_connection.id
}


