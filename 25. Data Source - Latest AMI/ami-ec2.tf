provider "aws" {
    region = "us-east-1"
}

data "aws_ami" "myimage" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

}

resource "aws_instance" "my_ec2" {
  ami = data.aws_ami.myimage.image_id
  instance_type = "t2.micro"
  subnet_id = "subnet-035810c6619ba14aa"
}