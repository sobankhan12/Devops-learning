provider aws{
    access_key="AKIAQYPQ3CVMHTRKLRJR"
    secret_key="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"
}
resource aws_iam_user bilal {
  name="bilal"
}
resource aws_iam_group admin-group {
  name="Admin-group"
}
resource aws_iam_policy admin-group-policy {
  name="Developer-group-policy"
  policy=  jsonencode(
    {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1617416725902",
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
  )
}
resource aws_iam_policy_attachment Admin-group-access {
  group=aws_iam_group.admin-group.name
  policy_arn=aws_iam_policy.admin-group-policy.arn
}


