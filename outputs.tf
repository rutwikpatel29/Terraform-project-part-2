output "vpc_network" {
  value = google_compute_network.vpc_network.self_link
}

output "subnets" {
  value = google_compute_subnetwork.subnet[*].self_link
}

output "cloud_run_url" {
  value = google_cloud_run_service.cloud_run.status[0].url
}