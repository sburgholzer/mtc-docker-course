terraform {
  backend "s3" {
    bucket  = "sburgholzer-terraform-state-bucket"
    key     = "mtc-docker/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
