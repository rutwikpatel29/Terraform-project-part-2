resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  count         = length(var.subnet_cidrs)
  name          = "${var.vpc_name}-subnet-${count.index}"
  ip_cidr_range = element(var.subnet_cidrs, count.index)
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

resource "google_cloud_run_service" "cloud_run" {
  name     = var.cloud_run_name
  location = var.region

  template {
    spec {
      containers {
        image = var.cloud_run_image
        resources {
          limits = {
            memory = var.cloud_run_memory
          }
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.cloud_run.location
  project     = google_cloud_run_service.cloud_run.project
  service     = google_cloud_run_service.cloud_run.name
  policy_data = data.google_iam_policy.noauth.policy_data
}

data "google_iam_policy" "noauth" {
  binding {
    role    = "roles/run.invoker"
    members = ["allUsers"]
  }
}
