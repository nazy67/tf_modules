# Application load balancer
resource "aws_lb" "web_lb" {
  name               = var.alb_name             
  internal           = var.is_internal          
  load_balancer_type = var.load_balancer_type   
  security_groups    = var.security_groups       
  subnets            = var.public_subnets        
  
  tags = merge(
    local.common_tags,
    {
      Name = "${var.env}_lb_sg"
    }
  )
}

# Target group
resource "aws_lb_target_group" "web_tg" {
  name     = var.target_group_name
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    path    = "/"
    port    = 80
    matcher = "200"
  }
}

# HTTP listeners rule
resource "aws_lb_listener" "http_listener" {
  depends_on        = []
  load_balancer_arn = var.app_lb_arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = var.action_type
    target_group_arn = var.tg_arn
  }
}

# ALB security group
resource "aws_security_group" "lb_sg" {
  name        = var.lb_sg_name 
  description = var.lb_sg_description
  vpc_id      = var.vpc_id

  tags = merge(
    local.common_tags,
    {
      Name = "${var.env}_lb_sg"
    }
  )
}

resource "aws_security_group_rule" "lb_ingress" {
  type                     = var.rule_type
  from_port                = var.http_ingress
  to_port                  = var.http_ingress
  protocol                 = var.protocol_type
  cidr_blocks              = var.cidr_blocks
  security_group_id        = aws_security_group.lb_sg.id
}

resource "aws_security_group_rule" "lt_ingress" {
  type                     = var.rule_type
  from_port                = var.http_ingress
  to_port                  = var.http_ingress
  protocol                 = var.protocol_type
  source_security_group_id = var.launch_template_sg
  security_group_id        = aws_security_group.lb_sg.id
}

resource "aws_security_group_rule" "lb_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.lb_sg.id
}