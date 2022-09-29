resource local_file soba {
  sensitive_content = "sdjkds"
  filename             = "/root/soban"
  file_permission      = 0777
  directory_permission = 0777
  lifecycle{
      create_before_destroy=true
  }
}
/* if you your resources will no be destroyed you use 
prevent_destroy=true in any curcumstance*/
resource local_file soba {
  sensitive_content = "sdjkds"
  filename             = "/root/soban"
  file_permission      = 0777
  directory_permission = 0777
  lifecycle{
      prevent_destroy=true
  }
}