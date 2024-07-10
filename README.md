# Terraform Module for GCP Infrastructure

This module sets up a VPC, subnets, and a Cloud Run service on GCP.

## Usage

```hcl
module "gcp_infrastructure" {
  source = "../path-to-your-module"

  vpc_name        = "my-vpc"
  subnet_cidrs    = ["10.0.1.0/24", "10.0.2.0/24"]
  region          = "us-central1"
  cloud_run_name  = "hello-world"
  cloud_run_image = "us-central1-docker.pkg.dev/x5-vivid-science-g/hello-world/hello-world:latest"
}
```
## Inputs

    vpc_name: The name of the VPC network.
    subnet_cidrs: A list of CIDR ranges for the subnets.
    region: The GCP region.
    cloud_run_name: The name of the Cloud Run service.
    cloud_run_image: The Docker image for the Cloud Run service.
    cloud_run_memory: The memory allocation for the Cloud Run service (default: 512Mi).

## Outputs
    vpc_network: The self-link of the VPC network.
    subnets: The self-links of the subnets.
    cloud_run_url: The URL of the Cloud Run service.