resource "google_compute_router" "router" {
  name    = var.router
  region  = var.region
  network = var.vpc_self_link
}

resource "google_compute_router_nat" "nat" {
  name                               = var.nat
  router                             = google_compute_router.router.name
  region                             = var.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}