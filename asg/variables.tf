# ASG variables
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

variable "instance_type" {
  type        = string
  description = "this is instance type"
  default     = ""
}

variable "target_group_arns" {
  description = "this is instance type"
  type        = list(string)
  default     = []
}

variable "asg_name" {
  type        = string
  description = "asg name"
  default     = ""
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

variable "is_force_delete" {
  type        = bool
  description = "delete force"
  default     = true
}

variable "availability_zone" {
  description = "A list of one or more availability zones for the group"
  type        = list(string)
  default     = []
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
  type        = string
  description = "device name"
  default     = "/dev/sda1"
}

variable "delete_on_termination" {
  type        = bool
  description = "delete on termination"
  default     = null
}

variable "encrypted" {
  type        = bool
  description = "encrypted ebs"
  default     = null
}

variable "volume_size" {
  type        = number
  description = "ebs volume size"
  default     = null
}

variable "volume_type" {
  type        = string
  description = "ebs volume type"
  default     = ""
}

# VPC id
variable "vpc_id" {
  type        = string
  description = "vpc id"
  default     = ""
}

# Web sg group
variable "asg_sg_name" {
  description = "asg name"
  type        = string
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
  description = "ssh port"
  default     = 80
}

variable "protocol_type" {
  type        = string
  description = "protocol type"
  default     = "tcp"
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

variable "asg_security_group_ids" {
  type        = list(any)
  description = "asg security group"
  default     = []
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