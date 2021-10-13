# ALB variables
variable "lb_name" {
  type = string
  description = "load balancer name"
  default = null
}

variable "is_internal" {
  type = bool
  description = "internal/internet facing"
  default = false
}

variable "load_balancer_type" {
  type = string
  description = "load balancer type: application"
  default = null
}

variable "security_groups" {
  type = string
  description = "application load balance sg"
  default = null
}

variable "alb_sg" {
  type = string
  description = "app load balancer sg"
  default = null
}


variable "target_group_arns" {
  description = "A set of `aws_alb_target_group` ARNs, for use with Application or Network Load Balancing"
  type        = list(string)
  default     = []
}