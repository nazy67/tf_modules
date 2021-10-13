# ALB
output "lb_id" {
  description = "load balancer id"
  value       = aws_lb.web_lb.id
}

output "lb_arn" {
  description = "arn of the load balancer"
  value       = aws_lb.web_lb.arn
}

output "http_listener_arn" {
  description = "http listener arn"
  value       = aws_lb_listener.http_listener.arn
}

output "target_group_arn" {
  description = "target group arn"
  value       = aws_lb_target_group.web_tg.arn
}

output "lb_sg_id" {
  description = "target group arn"
  value       = aws_security_group.lb_sg.id
}

# Launch template
output "launch_template_id" {
  description = "the id of the launch template"
  value       = aws_launch_template.web_template.id
}

output "launch_template_arn" {
  description = "the arn of the launch template"
  value       = aws_launch_template.web_template.arn
}

output "launch_template_sg" {
  description = "the name of the launch template sg"
  value       = aws_security_group.web_sg.id
}

# Autoscaling group
output "autoscaling_group_id" {
  description = "the autoscaling group id"
  value       = aws_autoscaling_group.web_asg.id
}

output "autoscaling_group_arn" {
  description = "the arn for this asg"
  value       = aws_autoscaling_group.web_asg.arn
}
