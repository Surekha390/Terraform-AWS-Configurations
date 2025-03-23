resource "aws_iam_user" "this-IAM-user" {
  name = "surekha-user"
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "surekha-user-policy"
  user = aws_iam_user.this-IAM-user.name

  policy = jsonencode({
	"Version": "2012-10-17",
	"Statement": [
		{
			"Action": "ec2:*",
			"Effect": "Allow",
			"Resource": "*"
		},
		{
			"Action": "elasticloadbalancing:*",
			"Effect": "Allow",
			"Resource": "*"
		}
	]
}

)
}

# policy code we can copy from policies in IAM policies from console.
