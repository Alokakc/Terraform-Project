terraform {
  backend "gcs" {
    bucket  = "terraform-statefile-remote"        
    prefix  = "terraform/state"          
  }
}
