data "aws_ami" "my_image" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "ansible-jenkins-terraform-image"
  owners           = ["self"]

}
