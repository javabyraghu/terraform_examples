resource "aws_db_instance" "default" {
  allocated_storage    = 100
  engine               = "mysql"
  engine_version       = "8"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "root"
  password             = "Raghu1234"
  parameter_group_name = "default.mysql8"
  skip_final_snapshot  = true
}
