variable "vpc_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnet_cidrs" {
  description = "A list of CIDR ranges for the subnets"
  type        = list(string)
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "cloud_run_name" {
  description = "The name of the Cloud Run service"
  type        = string
}

variable "cloud_run_image" {
  description = "The Docker image for the Cloud Run service"
  type        = string
}

variable "cloud_run_memory" {
  description = "The memory allocation for the Cloud Run service"
  type        = string
  default     = "512Mi"
}
