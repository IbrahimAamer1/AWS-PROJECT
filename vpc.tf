resource "aws_vpc" "first_VPC" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "first-VPC"
  }
}

terraform {
  backend "s3" {
    bucket         = "ibrahim1234"
    key            = "tfstate"
    region         = "eu-central-1"
    dynamodb_table = "ibrahim123"
  }
}
