output "bastion_public_ip" {
  value = aws_instance.bastion_host.public_ip
}
output "bastion_state" {
  value = aws_instance.bastion_host.instance_state
}
output "bastion_private_ip" {
  value = aws_instance.bastion_host.private_ip
}
output "bastion_sg_id" {
  value = aws_security_group.bastion_sg.id
}
