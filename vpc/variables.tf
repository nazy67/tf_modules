# Providers variable
variable "aws_region" {
  type        = string
  description = "The region Terraform deploys your infra"
  default     = ""
}

# VPC variables
variable "vpc_cidr_block" {
  type        = string
  description = "cidr block for the vpc"
  default     = ""
}

# Subnet variables
variable "aws_az_1a" {
  type        = string
  description = "The region Terraform deploys your infra"
  default     = ""
}

variable "aws_az_1b" {
  type        = string
  description = "The region Terraform deploys your infra"
  default     = ""
}

variable "cidr_block" {
  description = "ingress/egress cidr block"
  type        = string
  default     = "0.0.0.0/0"
}

variable "pub_cidr1_subnet" {
  type        = string
  description = "cidr block for the  1st public subnet"
  default     = ""
}

variable "pub_cidr2_subnet" {
  type        = string
  description = "cidr block for the 2nd public subnet"
  default     = ""
}

variable "priv_cidr3_subnet" {
  type        = string
  description = "cidr block for the 3rd private subnet"
  default     = ""
}

variable "priv_cidr4_subnet" {
  type        = string
  description = "cidr block for the 4th private subnet"
  default     = ""
}

variable "s3_bucket_arn" {
  type        = string
  description = "s3 bucket arn for vpc flow logs"
  default     = ""
}

# Tags variables
variable "env" {
  type        = string
  description = "environment name"
  default     = ""
}

variable "managed_by" {
  type        = string
  description = "managed by tr or cfn"
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