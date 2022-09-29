resource "aws_db_instance" "mydatabase" {
  skip_final_snapshot = true
  engine="mysql"
  instance_class = "db.t2.micro"
  allocated_storage = 1
  username = var.db_username
  password=var.db_password
}