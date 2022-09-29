variable filename {
  type        = string
  default     = "/root/pet.txt"
  description = "pet text will be created"
}
variable content{
    type=string
    default="This is my lovely pet here"
    

}
variable prefix {
  type        = list(string)
  default     = ["Mr","Mrs","Sir"]
  description = "description"
}
variable password_change {
  type        = list(number)
  default     = [1,2,3,4,5]
  description = "description"
}
variable content {
  type        = string
  default     = {
      "first_name"="Soban"
      "last_name"="khan"

  }
  description = "description"
}
# touples
variable ketty {
  type        = tuple([number,string,bool,string,number])
  default     = [12,"soban",true,"asad",13]
  description = "description"
}





