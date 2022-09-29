/*IF YOU WANT TO READ DATA FROM PROVISIONED RESOUCRCE 
YOU USE DATA RESOURCE YOU CAN JUST READ nothing else
*/
resource local_file pet2 {
  sensitive_content = data.local_file.pet1.content
  filename             = "/root/pet2.txt"
  file_permission      = 0777
  directory_permission = 0777
}
data local_file pet1 {
  filename = "/root/dogs.txt"
}

