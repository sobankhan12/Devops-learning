# if you want to increase file numbeer you use count
resource local_file soba {
  sensitive_content = "sdjkds"
  filename             = "/root/soban"
  file_permission      = 0777
  directory_permission = 0777
  count=3
}