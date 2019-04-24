resource "aws_iam_policy" "policy" {
  name        = "test_policy"
  path        = "/division/"
  description = "test policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
        "Action": [
            "ec2:Describe*"
        ],
        "Effect": "Allow",
        "Resource": "*"
    },
    {
        "Action": [
            "s3:CreateBucket",
            "s3:DeleteBucket"
        ],
        "Effect": "Allow",
        "Resource": "*"
    },
    {
        "Action": [
            "kms:Encrypt",
            "kms:Decrypt"
        ],
        "Effect": "Allow",
        "Resource": [
            "arn:aws:kms:*"
        ]
    }
  ]
}
EOF
}
