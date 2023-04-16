provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0634358bf031cc921"
  instance_type = "t3.micro"
   vpc_security_group_ids = [aws_security_group.allow_ssh]

  tags = {
    Name = "INstance-1"
  }
}

output "publicIp"{

value = aws_instance.web.public_ip

}

