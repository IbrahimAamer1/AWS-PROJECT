resource "aws_internet_gateway" "GW" {
  vpc_id = aws_vpc.first_VPC.id

  tags = {
    Name = "GW"
  }
}