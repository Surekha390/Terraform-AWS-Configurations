
variable "environment" {
    #default = "development"
    default = ""
}

resource "aws_instance" "my_ec2" {
  ami = "ami-0b6d6dacf350ebc82"
  #instance_type = var.environment == "development" ? "t2.micro" : "m5.large"  #Syntax:  condition ? true_val : false_val
  #instance_type = var.environment != "development" ? "t2.micro" : "m5.large"
  instance_type = var.environment == "" ? "t2.micro" : "m5.large" #If the value is null, then create t2.micro, otherwise create m5.large
}
#In the terminal when we give, terraform plan -var="environment=production" This will create m5.large instance.