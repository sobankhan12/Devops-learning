# iam access
## to see users list in aws
```bash
$ aws iam list-users
```
## How to create a user in iam
```bash
$ aws iam create-user --user-name soban
```
## how to check default region
```bash
$ cat /root/.aws/config
```
# how to see access key id
```bash
$ cat /root/.aws/credentials
```
# How to give access to some user 
```bash
$ aws  iam attach-user-policy --user-name mary --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
```
# How to create a group 
```bash
$ aws iam create-group --group-name project-sapphire-developers
```
# how to add user to group
```bash
$ aws iam add-user-to-group --user-name jack --group-name developers
```
# how to attach group policy
```bash
$ aws iam attach-group-policy --group-name project-sapphire-developers --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess
```
# how to export aws access key variable
```bash
# access key
$ export AWS_ACESS_KEY_ID="key"
$ export AWS_SECRET_ACCESS_KEY_ID="DDKD"
$ export AWS_REGION="us-east-1"