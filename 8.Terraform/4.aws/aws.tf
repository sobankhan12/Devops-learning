provider aws{
    access_key="AKIAQYPQ3CVMHTRKLRJR"
    secret_key="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"
}
resource aws_iam_user "admin-user" {
   name="lucy"
   tags={
       Description="this is first user"
   }
}
 