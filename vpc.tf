resource "aws_vpc" "BasicVPC" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    "Name" = var.vpc_name
    "Env"  = var.env
  }
}

resource "aws_internet_gateway" "BasicIGW" {
  vpc_id = aws_vpc.BasicVPC.id
  tags = {
    "Name" = var.IGW_Name
  }
}
