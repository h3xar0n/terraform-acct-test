terraform {
  backend "s3" {
    bucket  = "terraform-cert-123123123"
    key     = "state/terraform.tfstate"
    region  = "us-west-1"
    profile = "personal"
  }
}