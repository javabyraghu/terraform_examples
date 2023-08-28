resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "My Terraform VPC"
  }
}

resource "aws_subnet" "my_subnet" {
  count = 2
  cidr_block = "10.0.${count.index}.0/24"
  vpc_id = aws_vpc.my_vpc.id

  availability_zone = "ap-south-1a" 
  
  tags = {
    Name = "My Subnet ${count.index + 1}"
  }
}