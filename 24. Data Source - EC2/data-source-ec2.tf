#there are 2 data sources available in documentation like aws_instance and aws_instances. As, now we want to fetch info regarding only one EC2 instance,
#we have to specify filters also
provider "aws" {
    region = "us-west-2"
}
data "aws_instance" "example" {
  filter {
    name   = "tag:Team"
    values = ["Production"]
  }
}

#we can see the information regarding instance in .tfstate file.