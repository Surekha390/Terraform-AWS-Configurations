resource "aws_instance" "myec2" {
  ami           = "ami-0b6d6dacf350ebc82"
  instance_type = var.instance_type
}