resource "aws_subnet" "public-subnet1" {
  vpc_id                  = aws_vpc.first_VPC.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-central-1a"
  tags = {
    Name = "public-subnet"
  }
}
resource "aws_subnet" "private-subnet1" {
  vpc_id            = aws_vpc.first_VPC.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "private-subnet"
  }
}

resource "aws_subnet" "public-subnet2" {
  vpc_id                  = aws_vpc.first_VPC.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-central-1b"
  tags = {
    Name = "public-subnet2"
  }
}
resource "aws_subnet" "private-subnet2" {
  vpc_id            = aws_vpc.first_VPC.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    Name = "private-subnet2"
  }
}