provider "aws" {
    region = "us-west-2"
}
data "aws_instances" "example" {

}
#we can see the information regarding instance in .tfstate file.