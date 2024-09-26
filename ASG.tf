resource "aws_launch_configuration" "app" {
  name                 = "app-launch-configuration"
  image_id             = "ami-0e04bcbe83a83792e"
  instance_type        = "t2.micro"
  key_name             = aws_key_pair.UbuntuKP.key_name
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
  security_groups      = [aws_security_group.bastion.id]
  user_data            = <<-EOF
#!/bin/bash
sudo apt update -y
sudo apt install -y python3
echo "Hello, World from ASG, $(hostname -f)" | sudo tee /var/www/html/index.html
sudo python3 -m http.server 80 --directory /var/www/html/ &
EOF

}
resource "aws_autoscaling_group" "app" {
  name                 = "ASG"
  launch_configuration = aws_launch_configuration.app.id
  min_size             = 1
  max_size             = 3
  desired_capacity     = 2
  vpc_zone_identifier  = [aws_subnet.public-subnet1.id, aws_subnet.public-subnet2.id]


  target_group_arns = [aws_lb_target_group.test.arn]
  tag {
    key                 = "Name"
    value               = "ASG_Instance"
    propagate_at_launch = true
  }
}
