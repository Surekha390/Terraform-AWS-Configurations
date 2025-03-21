provider "aws" {
  region = "us-west-2"
}

resource "aws_iam_user" "iam-user-local" {
  name = "surekha-iam-user"
}