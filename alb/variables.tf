# ALB variables
variable "lb_name" {
  type = string
  description = "load balancer name"
  default = null
}

variable "public_subnets" {
  type = list(string)
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
  default = null
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
  default = null
}

variable "ssh_port" {
  type = number
  description = "ssh port"
  default = null
}

variable "http_port" {
  type = number
  description = "http port"
  default = null
}

variable "cidr_blocks" {
  type = number
  description = "cidr blocks"
  default = null
}

variable "protocol_type" {
  type = string
  description = "protocol type"
  default = null
}

variable "launch_template_sg" {
  type = string
  description = "launch template sg"
  default = null
}

variable "lb_sg_description" {
  type = number
  description = "load balancer sg description"
  default = null
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
  default = null
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
  default = ""
}

variable "managed_by" {
  type        = string
  description = "managed by tf"
  default = ""
}

variable "owner" {
  type        = string
  description = "owner of the resources"
  default = ""
}

variable "giturl" {
  type        = string
  description = "git url to the template"
  default = ""
}