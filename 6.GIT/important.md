# GIT

- it is a version control system where we keep record or version of our product
- it is distributed version control system(DVCS) 

# Repository

- it is a place where keep our code or folder of programming on remote server
- it is a folder of our product relative
# Server
- it stores all repositories
# Working directory
- where is your files are present locally in your machines

# Commit

- store changes in your local repo

- it generate commit id of 40 length

- commit id uses hash-1 checksum

- that ensure every is secured not going wrong with data

  

# Tags

- to assign a meaningful name to specific version or commit id so that you can easily understand

  what you specifically change in this commit 

# Snapshot

- those changes that made you in your code and when you commit those changes it create snapshot of

  those changes

# PUSH

- push operation copies changes from local repo to remote .
- to store changes permanently to remote server

# PULL

- push operation copies changes from  remote to local repo .

# Branch

- product  is same, so one repo but different tasks
- each task has one repo branch
- useful when you want work parallel
- can create one branch on basis of another branch
- changes are personal to particular branch
- Default branch is master 

# Advantages of git

- free and open source
- fast and small (due to local repo)
- security(hash function sha1)
- no need powerful hardware
- easier branching

# Types of Repo

- Bare(central repo)
  - store and share repo most(central )

- Non Bare(local repo)
  - modification of files  
  - all local repo 

# Install git on aws ec2

- sudo su
- yum update -y
- yum install git -y
- git config --global user.name "soban"
- git config --global user.email "sobankhan252@gmail.com"
- which git is used to see folder that where is installed
- git config --list
