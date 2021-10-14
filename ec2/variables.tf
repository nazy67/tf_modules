# VPC id
variable "vpc_id" {
  type        = string
  description = "vpc id"
  default     = ""
}

# Subnet id
variable "subnet_id" {
  type        = string
  description = "subnet id"
  default     = ""
}

# EC2 variables
variable "image_id" {
  type        = string
  description = "redhat ami"
  default     = ""
}

variable "instance_type" {
  type        = string
  description = "instance type"
  default     = ""
}

variable "key_name" {
  type        = string
  description = "key name for bastion host"
  default     = ""
}

# Root volume variables
variable "root_volume_size" {
  type        = number
  description = "root volume size"
  default     = null
}

variable "ebs_volume_type" {
  type        = string
  description = "ebs volume type"
  default     = ""
}

# EC2 sg variables
variable "sg_name" {
  type        = string
  description = "ec2 server sg name"
  default     = ""
}

variable "ssh_ip_ingress" {
  type        = list(string)
  description = "local ip ingress"
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