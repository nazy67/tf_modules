locals {
  common_tags = {
    Environment = var.env
    ManagedBy   = var.managed_by
    Owner       = var.owner
    GitUrl      = var.giturl
  }
}

locals {
  ingress_rules = {
    1 = { from_port = 80,
      to_port     = 80,
      protocol    = "tcp",
      cidr_block  = "0.0.0.0/0",
      description = "http_ingress",
      type = "ingress" }
  }
}