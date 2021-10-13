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
  value       = aws_security_group.web_sg.name
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