provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAQLS*****GWR3O4SH"
  secret_key = "aRsZ2dhL*********mkWpXs6bHZ4V0Y0FnN"
}


resource "aws_instance" "my_ec2" {
  ami = "ami-0b6d6dacf350ebc82"
  instance_type = "t2.micro"
  tags = {
    Name = "my-first-ec2"
  }
}