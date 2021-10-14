# VPC id variable
variable "vpc_id" {
  type        = string
  description = "vpc id"
  default     = ""
}

# ASG variables
variable "asg_name" {
  type        = string
  description = "asg name"
  default     = ""
}

variable "vpc_zone_identifier" {
  description = "list of subnet ids to launch resources in"
  type        = list(string)
  default     = []
}

variable "health_check_type" {
  description = "`EC2` or `ELB`"
  type        = string
  default     = ""
}

variable "target_group_arns" {
  description = "this is instance type"
  type        = list(string)
  default     = []
}

variable "max_size" {
  type        = number
  description = "minimum size of the autoscaling group"
  default     = null
}

variable "min_size" {
  type        = number
  description = "maximum size of the autoscaling group"
  default     = null
}

variable "desired_capacity" {
  type        = number
  description = "The number of ec2 instances that should be running in the asg"
  default     = null
}

# ASG and ALB association
variable "alb_target_group_arn" {
  type        = string
  description = "alb target group arn"
  default     = ""
}

# Launch template variables
variable "name_prefix" {
  type        = string
  description = "name prefix"
  default     = ""
}

variable "instance_type" {
  type        = string
  description = "this is instance type"
  default     = ""
}

variable "image_id" {
  type        = string
  description = "redhat image id"
  default     = ""
}

variable "key_name" {
  type        = string
  description = "key name"
  default     = ""
}

variable "user_data_base64" {
  description = "The Base64-encoded user data to provide when launching the instance"
  type        = string
  default     = null
}

variable "asg_security_group_ids" {
  type        = list(any)
  description = "asg security group"
  default     = []
}

# Web sg group
variable "asg_sg_name" {
  description = "asg name"
  type        = string
  default     = ""
}

variable "bastion_sg" {
  type        = string
  description = "bastion host sg"
  default     = ""
}

variable "lb_sg" {
  type        = string
  description = "app load balancer sg"
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