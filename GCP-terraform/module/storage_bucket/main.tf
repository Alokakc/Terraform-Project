resource "google_storage_bucket" "tf_bookshelf_bucket_kumar" {
  name          = var.bucket
  location      = "US"
  uniform_bucket_level_access = true
  force_destroy = true
}

resource "google_storage_bucket_iam_binding" "public_read" {
  bucket = google_storage_bucket.tf_bookshelf_bucket_kumar.name

  role = "roles/storage.objectViewer"

  members = [
    "allUsers"
  ]
}