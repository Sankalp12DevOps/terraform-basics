terraform {
  backend "s3" {
    bucket = "myterraform-s3-learning"
    key    = "dev/terraform/tfstate"
    region = " ap-south-1"
  }
}
