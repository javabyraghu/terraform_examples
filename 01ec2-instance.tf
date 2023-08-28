provider "aws" {
  region = "ap-south-1"
  # access_key = "AKIAWZADR3RJTUF7L76B"
  # secret_key = "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"
}

resource "aws_instance" "AWSServer" {
  ami             = "ami-0f5ee92e2d63afc18"
  instance_type   = "t2.micro"
  key_name        = "linux"
  security_groups = ["default"]
  tags = {
    Name = "MyEC2-VM-Ubuntu"
  }
}
