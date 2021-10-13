# Auto scaling group
resource "aws_autoscaling_group" "web_asg" {
  name                = var.asg_name
  max_size            = var.max_size
  min_size            = var.min_size
  desired_capacity    = var.desired_capacity
  health_check_type   = var.health_check_type
  force_delete        = var.is_force_delete
  target_group_arns   = var.target_group_arns
  vpc_zone_identifier = var.vpc_zone_identifier                             
                       
  launch_template {
    id      = aws_launch_template.web_template.id
    version = aws_launch_template.web_template.latest_version
  }

  tag {
    key                 = "Name"
    value               = "${var.env}_web_server"
    propagate_at_launch = true
  }

  dynamic "tag" {
    for_each = local.common_tags

    content {
      key                 = tag.key
      value               = tag.value
      propagate_at_launch = true
    }
  }
}

# ASG attachment to ALB
resource "aws_autoscaling_attachment" "web_lb_asg_attachment" {
  alb_target_group_arn   = var.alb_target_group_arn
  autoscaling_group_name = aws_autoscaling_group.web_asg.id
}