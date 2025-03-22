resource "aws_instance" "my-ec2" {
  ami           = "ami-0520f976ad2e6300c"
  #instance_type = var.types["eu-central-1"]
  instance_type = var.list[0]
}
variable "types" {
    type = map
    default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t3.micro"
    eu-central-1 = "t2.nano"
    }
}
variable "list" {
    type = list
    default = ["m5.large", "m5.xlarge", "t2.medium"]
}