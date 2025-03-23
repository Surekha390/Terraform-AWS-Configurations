resource "aws_instance" "my_ec2" {
  ami = "ami-0b6d6dacf350ebc82"
  instance_type = "t2.micro"
  count = 3
  tags = {
    Name = "Production-Instance-${count.index}"
  }
}

/*
resource "aws_iam_user" "lb" {
  name = "my-user"
  count =3
}
#can cretae only 1 IAM user, whenever terraform tries to create another user with the same name, then it throws an error that IAM user name(my-user) already exists.
*/

resource "aws_iam_user" "lb" {
  name = "payments-user.${count.index}"
  count =3
}

variable "users" {
    type = list(string)
    default = ["alice", "bob", "john", "parrot", "pegion"] #even if the list contains more names, it will take only first 3 names as our count = 3
}
resource "aws_iam_user" "IAM-user-with-different-name" {
  name = var.users[count.index]
  count =3
}