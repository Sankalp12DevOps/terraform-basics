provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0634358bf031cc921"
  instance_type = "t3.micro"
  security_groups = [aws_security_group.allow_ssh]

  tags = {
    Name = "INstance-1"
  }
}

output "publicIp"{

value = aws_instance.web.public_ip

}


resource "aws_security_group" "allow_ssh" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow_tls"
  }
}