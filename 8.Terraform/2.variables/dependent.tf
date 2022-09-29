resource local_file whale {
  
  filename = "root/whale"
  depends_on=[local_file.krill]
}
resource local_file krill {
  
  filename = "root/krill"

}
# resource random_pet my-pet {
#   length    = 1
#   prefix    = "Mr"
#   separator = "."
# }

