# Example Usage of the GCP Infrastructure Module

This example demonstrates how to use the Terraform module to set up a VPC, subnets, and a Cloud Run service on GCP.

## Steps to Deploy

1. Navigate to the example directory:
   ```sh
   cd terraform-module/examples/usage-example
2. Initialize Terraform:
    ```sh 
    terraform init

3. Apply the Terraform configuration:
    ```sh 
    terraform apply

4. Review Outputs:
    After applying, Terraform will output the URLs of the Cloud Run service and VPC details.