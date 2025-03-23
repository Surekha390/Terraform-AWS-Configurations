provider "aws" {
  region = var.region
}

variable "region" {
  default = "us-west-2"
}

variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-08a0d1e16fc3f61ea"
    "us-west-2" = "ami-0b20a6f09484773af"
    "ap-south-1" = "ami-0e1d06225679bc1c5"
  }
}


resource "aws_instance" "app-dev" {
   ami = lookup(var.ami,var.region)
   instance_type = "t2.micro"
   count = length(var.tags)

   tags = {
     Name = element(var.tags,count.index)
     CreationDate = formatdate("DD MMM YYYY hh:mm ZZZ",timestamp())
   }
}
/*
creates EC2 instance
(ami = region + ami
look-up(look into))
"us-east-1" = "ami-08a0d1e16fc3f61ea"  -ami
count = 2
tags: name = firstec2, name=secondec2
creationDate =  


*/
