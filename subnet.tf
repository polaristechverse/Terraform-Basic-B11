resource "aws_subnet" "BasicSubnet-1" {
  vpc_id                  = aws_vpc.BasicVPC.id
  cidr_block              = var.Subnet_cidr_1
  availability_zone       = var.az1
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.subnet_1_name
  }
}

resource "aws_subnet" "BasicSubnet-2" {
  vpc_id                  = aws_vpc.BasicVPC.id
  cidr_block              = var.Subnet_cidr_2
  availability_zone       = var.az2
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.subnet_2_name
  }
}

resource "aws_subnet" "BasicSubnet-3" {
  vpc_id                  = aws_vpc.BasicVPC.id
  cidr_block              = var.Subnet_cidr_3
  availability_zone       = var.az3
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.subnet_3_name
  }
}