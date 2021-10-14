# VPC id
variable "vpc_id" {
  type        = string
  description = "vpc id"
  default     = ""
}

# ALB variables
variable "lb_name" {
  type        = string
  description = "application load balancer name"
  default     = ""
}

variable "public_subnets" {
  type        = list(any)
  description = "public subnets for alb"
  default     = []
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

variable "launch_template_sg" {
  type        = string
  description = "launch template sg"
  default     = ""
}

# HTTP listeners rule variables
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