resource "aws_instance" "ec2_server" {
  ami                         = var.image_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true
  key_name                    = var.key_name


  root_block_device {
    volume_size           = var.root_volume_size
    volume_type           = var.ebs_volume_type
    delete_on_termination = true
    encrypted             = true
  }

  tags = merge(
    local.common_tags,
    {
      Name = "${var.env}_ec2_server"
    }
  )
}