provider "aws" {
  region = "us-west-2"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

output "eip-public_ip" {
  value = aws_eip.lb.public_ip
  #value = "http://${aws_eip.lb.public_ip}:8080"
  #value = aws_eip.lb 
}

