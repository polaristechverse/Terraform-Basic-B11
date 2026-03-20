resource "aws_route_table" "BasicRTB" {
  vpc_id = aws_vpc.BasicVPC.id
  tags = {
    "Name" = "DemoPublicRTB"
  }
  route {
    gateway_id = aws_internet_gateway.BasicIGW.id
    cidr_block = "0.0.0.0/0"
  }
}

resource "aws_route_table_association" "subnet-1-associate" {
  route_table_id = aws_route_table.BasicRTB.id
  subnet_id      = aws_subnet.BasicSubnet-1.id
}
resource "aws_route_table_association" "subnet-2-associate" {
  route_table_id = aws_route_table.BasicRTB.id
  subnet_id      = aws_subnet.BasicSubnet-2.id
}
