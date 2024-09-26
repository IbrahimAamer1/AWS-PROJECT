resource "aws_lb" "lb" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.bastion.id]
  subnets            = [
     aws_subnet.public-subnet1.id,
     aws_subnet.public-subnet2.id
  ]

}
resource "aws_lb_target_group" "test" {
  name     = "targetgroup"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.first_VPC.id
  health_check {
    port     = 80
    protocol = "HTTP"
    path     = "/"
  }
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.lb.arn
  port              = 80  
  protocol          = "HTTP"  

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.test.arn
  }
}
