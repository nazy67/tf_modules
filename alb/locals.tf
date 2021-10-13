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
    1 = { from_port = 443,
      to_port     = 443,
      protocol    = "tcp",
      cidr_block  = "0.0.0.0/0",
      description = "https_ingress",
      type = "ingress" }
  }
}