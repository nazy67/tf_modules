resource "aws_security_group" "bastion_sg" {
  name        = var.sg_name
  description = "allow traffic from/to bastion sg"
  vpc_id      = var.vpc_id
  tags = merge(
    local.common_tags,
    {
      Name = "${var.env}_bastion_sg"
    }
  )
}

resource "aws_security_group_rule" "ssh_ingress" {
  type              = var.rule_type
  from_port         = var.ssh_port
  to_port           = var.ssh_port
  protocol          = var.protocol_type
  cidr_blocks       = var.ingress_ssh_local_ip
  security_group_id = aws_security_group.bastion_sg.id
}

# resource "aws_security_group_rule" "web_ssh_ingress" {
#   type                     = var.rule_type
#   from_port                = var.http_ingress
#   to_port                  = var.http_ingress
#   protocol                 = var.protocol_type
#   source_security_group_id = aws_security_group.web_sg.id
#   security_group_id        = aws_security_group.bastion_sg.id
# }

resource "aws_security_group_rule" "egress_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.bastion_sg.id
}