# ALB variables
variable "lb_name" {
  type        = string
  description = "load balancer name"
  default     = ""
}

variable "public_subnets" {
  type        = list(any)
  description = "load balancer name"
  default     = []
}

variable "is_internal" {
  type        = bool
  description = "internal/internet facing"
  default     = false
}

variable "load_balancer_type" {
  type        = string
  description = "load balancer type: application"
  default     = "application"
}

# ALB security group 
variable "alb_security_group_ids" {
  type        = list(string)
  description = "application load balance sg ids"
  default     = []
}

variable "lb_sg_name" {
  type        = string
  description = "load balancer sg name"
  default     = ""
}
variable "rule_type" {
  type        = string
  description = "rule type"
  default     = "ingress"
}

variable "ssh_port" {
  type        = number
  description = "ssh port"
  default     = 22
}

variable "http_port" {
  type        = number
  description = "http port"
  default     = 80
}

variable "cidr_blocks" {
  type        = list(any)
  description = "cidr blocks"
  default     = ["0.0.0.0/0"]
}

variable "protocol_type" {
  type        = string
  description = "protocol type"
  default     = "tcp"
}

variable "launch_template_sg" {
  type        = string
  description = "launch template sg"
  default     = ""
}

variable "lb_sg_description" {
  type        = string
  description = "load balancer sg description"
  default     = "allow http traffic"
}

# VPC id
variable "vpc_id" {
  type        = string
  description = "vpc id"
  default     = ""
}

# HTTP/HTTPS listeners rule
variable "app_lb_arn" {
  type        = string
  description = "application load balancer arn"
  default     = ""
}

# Targer group variables
variable "target_group_name" {
  type        = string
  description = "target group name"
  default     = ""
}

variable "target_group_arn" {
  type        = string
  description = "target group arn"
  default     = ""
}

# Tag variables
variable "env" {
  type        = string
  description = "environment"
  default     = ""
}

variable "managed_by" {
  type        = string
  description = "managed by tf"
  default     = ""
}

variable "owner" {
  type        = string
  description = "owner of the resources"
  default     = ""
}

variable "giturl" {
  type        = string
  description = "git url to the template"
  default     = ""
}