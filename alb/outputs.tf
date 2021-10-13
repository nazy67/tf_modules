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
