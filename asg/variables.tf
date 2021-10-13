# ASG variables
variable "vpc_zone_identifier" {
  description = "list of subnet ids to launch resources in"
  type        = list(string)
  default     = null
}

variable "health_check_type" {
  description = "`EC2` or `ELB`"
  type        = string
  default     = null
}

variable "instance_type" {
  type        = string
  description = "this is instance type"
  default = null
}

variable "target_group_arns" {
  description = "this is instance type"
  type        = list(string)
  default     = null
}

variable "asg_name" {
  type        = string
  description = "asg name"
  default = ""
}

variable "max_size" {
  type        = number
  description = "minimum size of the autoscaling group"
  default = null
}

variable "min_size" {
  type        = number
  description = "maximum size of the autoscaling group"
  default = null
}

variable "desired_capacity" {
  type        = number
  description = "The number of ec2 instances that should be running in the asg"
  default = null
}

# ASG and ALB association
variable "alb_target_group_arn" {
  type        = string
  description = "alb target group arn"
  default     = null
}

variable "alb_target_group_arn" {
  type        = string
  description = "alb target group arn"
  default     = null
}

# Launch template variables
variable "name_prefix" {
  type        = string
  description = "name prefix"
  default = ""
}

variable "image_id" {
  type        = string
  description = "redhat image id"
  default = ""
}

variable "key_name" {
  type        = string
  description = "key name"
  default = ""
}

variable "is_force_delete" {
  type        = bool
  description = "delete force"
  default = true
}

variable "availability_zone" {
  description = "A list of one or more availability zones for the group"
  type        = list(string)
  default     = null
}

variable "user_data_base64" {
  description = "The Base64-encoded user data to provide when launching the instance"
  type        = string
  default     = null
}

# EBS volume
variable "block_device_mappings" {
  description = "block device mapping"
  type        = list(any)
  default     = []
}

variable "device_name" {
  type = string
  description = "device name"
  default = null
}

variable "no_device" {
  type = number
  description = "device name"
  default = null
}

variable "delete_on_termination" {
  type = bool
  description = "delete on termination"
  default = null
}

variable "encrypted" {
  type = bool
  description = "encrypted ebs"
  default = null
}

variable "volume_size" {
  type = number
  description = "ebs volume size"
  default = null
}

variable "volume_type" {
  type = string
  description = "ebs volume type"
  default = null
}

# VPC id
variable "vpc_id" {
  type = string
  description = "vpc id"
  default = null
}

# Web sg group
variable "asg_sg_name" {
  description = "asg name"
  type        = string
  default     = null
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
  description = "ssh port"
  default = null
}

variable "protocol_type" {
  type = string
  description = "protocol type"
  default = null
}

variable "bastion_sg" {
  type = string
  description = "bastion host sg"
  default = null
}

variable "lb_sg" {
  type = string
  description = "app load balancer sg"
  default = null
}

variable "security_groups" {
  type = list
  description = "asg security group"
  default = []
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