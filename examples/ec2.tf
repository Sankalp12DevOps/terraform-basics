provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0634358bf031cc921"
  instance_type = "t3.micro"

  tags = {
    Name = "INstance-1"
  }
}

output "publicIp"{

value = aws_instance.web.public_ip

}