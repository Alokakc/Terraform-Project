resource "google_compute_global_address" "private_ip_alloc" {
  name          = var.global_address_name
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = var.network
}

resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = var.network
  service                 = "servicenetworking.googleapis.com"
  deletion_policy = "ABANDON"
  reserved_peering_ranges = [google_compute_global_address.private_ip_alloc.name]

  depends_on = [ google_compute_global_address.private_ip_alloc ]
}

resource "google_sql_database_instance" "bookshelf_mysql_instance" {
  name             = var.sql_instance_name
  region           = var.region
  database_version = "MYSQL_8_0"

  settings {
    tier              = "db-g1-small"       
    disk_size         = 10                
    disk_type         = "PD_SSD"
    availability_type = "ZONAL"

    ip_configuration {
      ipv4_enabled    = false              
      private_network = var.vpc_self_link
    }

    location_preference {
      zone = var.zone
    }
  }

  deletion_protection = false

  depends_on = [
    google_service_networking_connection.private_vpc_connection
  ]
}


resource "google_sql_database" "bookshelf" {
  name     = var.database_name
  instance = google_sql_database_instance.bookshelf_mysql_instance.name
}

resource "google_sql_user" "root_user" {
  instance = google_sql_database_instance.bookshelf_mysql_instance.name
  name     = var.database_user_name
  host     = "%"
  password_wo = var.user_password
}