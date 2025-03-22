
/*
variable "my-list" {
    type = list
}

output "variable_value" {
    value = var.my-list 
}
*/

variable "my-list" {
    type = list(number)
}


/*
resource "aws_instance" "web" {
  ami           = "ami-0b6d6dacf350ebc82"
  instance_type = "t3.micro"
  #vpc_security_group_ids = ["sg-0a91cc4ca417789a7", "sg-003fc2caddc4f1c5b"]
  vpc_security_group_ids = ["sg-0a91cc4ca417789a7"]
}
*/
