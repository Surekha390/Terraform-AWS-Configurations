variable "environment" {
    default = "production"
}

variable "region" {
    default = "us-west-2"
} 

resource "aws_instance" "my_ec2" {
  ami = "ami-0b6d6dacf350ebc82"
 
  instance_type = var.environment == "production" && var.region == "us-west-2" ? "m5.large" : "t2.micro" 
}