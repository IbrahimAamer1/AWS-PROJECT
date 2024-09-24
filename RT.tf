resource "aws_route_table" "public_RT" {
  vpc_id = aws_vpc.first_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.GW.id
  }

  tags = {
    Name = "PUBLIC_RT"
  }
}

resource "aws_route_table" "private_RT" {
  vpc_id = aws_vpc.first_VPC.id

  tags = {
    Name = "PRIVATE_RT"
  }
}

resource "aws_route_table_association" "public_subnet1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.public_RT.id
}

resource "aws_route_table_association" "public_subnet2" {
  subnet_id      = aws_subnet.public-subnet2.id
  route_table_id = aws_route_table.public_RT.id
}

resource "aws_route_table_association" "private_subnet1" {
  subnet_id      = aws_subnet.private-subnet1.id
  route_table_id = aws_route_table.private_RT.id
}

resource "aws_route_table_association" "private_subnet2" {
  subnet_id      = aws_subnet.private-subnet2.id
  route_table_id = aws_route_table.private_RT.id
}
