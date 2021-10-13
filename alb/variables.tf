# ALB variables
variable "lb_name" {
  type = string
  description = "load balancer name"
  default = null
}

variable "public_subnets" {
  type = list
  description = "load balancer name"
  default = []
}

variable "is_internal" {
  type = bool
  description = "internal/internet facing"
  default = false
}

variable "load_balancer_type" {
  type = string
  description = "load balancer type: application"
  default = "application"
}

# ALB security group 
variable "security_groups" {
  type = list(string)
  description = "application load balance sg"
  default = []
}

variable "lb_sg_name" {
  type = string
  description = "load balancer sg name"
  default = null
}
variable "rule_type" {
  type = string
  description = "rule type"
  default = "ingress"
}

variable "ssh_port" {
  type = number
  description = "ssh port"
  default = 22
}

variable "http_port" {
  type = number
  description = "http port"
  default = 80
}

variable "cidr_blocks" {
  type = list
  description = "cidr blocks"
  default = ["0.0.0.0/0"]
}

variable "protocol_type" {
  type = string
  description = "protocol type"
  default = "tcp"
}

variable "launch_template_sg" {
  type = string
  description = "launch template sg"
  default = null
}

variable "lb_sg_description" {
  type = string
  description = "load balancer sg description"
  default = "allow http traffic"
}

# VPC id
variable "vpc_id" {
  type = string
  description = "vpc id"
  default = null
}

# HTTP listeners rule
variable "app_lb_arn" {
  type = string
  description = "application load balancer arn"
  default = null
}  

variable "action_type" {
  type = string
  description = "action type forward/redirect"
  default = "forward"
}

# Targer group variables
variable "target_group_name" {
  type = string
  description = "target group name"
  default = null
}

variable "target_group_arn" {
  type = string
  description = "target group arn"
  default = null
}

# Tag variables
variable "env" {
  type = string
  description = "environment"
  default = null
}

variable "managed_by" {
  type        = string
  description = "managed by tf"
  default = null
}

variable "owner" {
  type        = string
  description = "owner of the resources"
  default = null
}

variable "giturl" {
  type        = string
  description = "git url to the template"
  default = null
}