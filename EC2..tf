resource "aws_instance" "bastion" {
  ami                         = "ami-0e04bcbe83a83792e"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public-subnet1.id
  associate_public_ip_address = true
  availability_zone           = "eu-central-1a"
  security_groups             = [aws_security_group.bastion.id]
  key_name                    = aws_key_pair.UbuntuKP.key_name
  tags = {
    Name = "bastion"
  }
}
