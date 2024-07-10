provider "google" {
  project = "x5-vivid-science-g"
  region  = "us-central1"
}

module "gcp_infrastructure" {
  source = "../../"

  vpc_name        = "my-vpc"
  subnet_cidrs    = ["10.0.1.0/24", "10.0.2.0/24"]
  region          = "us-central1"
  cloud_run_name  = "hello-world"
  cloud_run_image = "us-central1-docker.pkg.dev/x5-vivid-science-g/my-repo/hello-world:latest"
}