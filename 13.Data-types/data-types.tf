/*
variable "user-name" {
    type = number
}
resource "aws_iam_user" "lb" {
  name = var.user-name
}
*/

resource "aws_instance" "web" {
  ami           = "ami-0b6d6dacf350ebc82"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a91cc4ca417789a7"]
}

