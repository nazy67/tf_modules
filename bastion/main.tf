resource "aws_instance" "bastion_host" {
    ami                    = var.ami
    instance_type          = var.instance_type
    subnet_id              = var.subnet_id
    vpc_security_group_ids = [aws_security_group.bastion_sg.id]
    
    root_block_device {
      volume_size           = var.root_volume_size
      volume_type           = var.ebs_volume_type
      delete_on_termination = true
      encrypted             = true
    }
    
    tags = merge(
      local.common_tags,
    {
      Name = "${var.env}_bastion_host"
    }
  )
}