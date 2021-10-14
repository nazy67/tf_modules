# Launch Template
resource "aws_launch_template" "web_template" {
  name_prefix            = var.name_prefix
  image_id               = var.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.asg_security_group_ids
  key_name               = var.key_name
  user_data              = var.user_data_base64

  lifecycle {
    create_before_destroy = true
  }

  block_device_mappings {
      device_name = "/dev/sda1"
      ebs {
        delete_on_termination = true
        encrypted             = true
        volume_size           = 20
        volume_type           = "gp3"
      }
    }

  tags = merge(
    local.common_tags,
    {
      Name = "${var.env}_web_lt"
    }
  )
}

# Security group for webserver
resource "aws_security_group" "web_sg" {
  name        = var.asg_sg_name
  description = "allow traffic"
  vpc_id      = var.vpc_id

  tags = merge(
    local.common_tags,
    {
      Name = "${var.env}_web_sg"
    }
  )
}

resource "aws_security_group_rule" "bastion_ssh_ingress" {
  type                     = var.rule_type
  from_port                = var.ssh_port
  to_port                  = var.ssh_port
  protocol                 = var.protocol_type
  source_security_group_id = var.bastion_sg
  security_group_id        = aws_security_group.web_sg.id
}

resource "aws_security_group_rule" "http_from_lb" {
  type                     = var.rule_type
  from_port                = var.http_port
  to_port                  = var.http_port
  protocol                 = var.protocol_type
  source_security_group_id = var.lb_sg
  security_group_id        = aws_security_group.web_sg.id
}

resource "aws_security_group_rule" "web_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.web_sg.id
}