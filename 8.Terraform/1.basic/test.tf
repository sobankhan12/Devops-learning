resource "local_file" "iac_code" {
  content="Setting up infrastructure as code"
  filename= "/opt/practice"
}
resource "random_pet" "other-pet" {
  prefix="Mr"
  separator="."
  length=1
}
