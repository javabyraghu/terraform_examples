

resource "aws_instance" "AWSServer" {
  ami             = "ami-0f5ee92e2d63afc18"
  instance_type   = "t2.micro"
  key_name        = "linux"
  security_groups = ["default"]
  tags = {
    Name = "MyEC2-VM-Ubuntu"
  }
}
