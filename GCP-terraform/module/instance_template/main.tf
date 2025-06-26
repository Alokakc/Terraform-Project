resource "google_compute_instance_template" "instance_template" {
  name         = var.instance_template_name
  project      = var.target_project_id
  machine_type = "c2-standard-4"
  region       = var.region

  metadata_startup_script = templatefile("${path.module}/startup-script-ansible.sh.tpl", {
    connection_name    = var.connection_name
    database_name      = var.database_name
    bucket_name        = var.bucket_name
    target_project_id  = var.target_project_id
    database_user_name = var.database_user_name
    user_password      = var.user_password
    client_id          = var.client_id
    client_secret      = var.client_secret  
  }) # <-- Path to your startup script

  tags = ["lb-health-check"]

  disk {
    boot         = true
    auto_delete  = true
    source_image = "projects/debian-cloud/global/images/family/debian-12"
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
  }

  service_account {
    email  = var.service_account_email # Or provide custom SA email
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
