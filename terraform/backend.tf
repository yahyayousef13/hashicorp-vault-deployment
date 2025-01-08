terraform {
  backend "s3" {
    bucket = "terraform-state-bucket"
    key    = "eks-cluster/terraform.tfstate"
    region = "us-east-1"
  }
}
