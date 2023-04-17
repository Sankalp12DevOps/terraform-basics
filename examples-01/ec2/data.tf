provider "aws" {
 region = "us-east-1"
}

data "aws_ami" "my_image" {
  most_recent      = true
  name_regex       = "ansible-jenkins-terraform-image"
  owners           = ["self"]

}
