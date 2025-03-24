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

#we can directly search with AMI-ID in the search bar of AMIs(not in AMI catalog) in EC2 in AWS console to get the AMI name.