provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "web" {
  ami = data.aws_ami.my_image.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "INstance-1"
  }
}

output "publicIp"{

value = aws_instance.web.public_ip

}

variable "sg_id"{


}
