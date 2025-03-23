resource "aws_iam_user" "this-IAM-user-1" {
  name = "surekha-user-after"
}

resource "aws_iam_user_policy" "policy-new" {
  name = "surekha-user-policy"
  user = aws_iam_user.this-IAM-user-1.name

  policy = file("./iam-user-policy.json")
}

# policy code we can copy from policies in IAM policies from console.
