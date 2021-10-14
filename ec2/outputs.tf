output "ec2_public_ip" {
  value = aws_instance.ec2_server.public_ip
}
output "ec2_state" {
  value = aws_instance.ec2_server.instance_state
}
output "ec2_private_ip" {
  value = aws_instance.ec2_server.private_ip
}
output "ec2_sg_id" {
  value = aws_security_group.ec2_sg.id
}