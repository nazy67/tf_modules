# Providers variables
variable "aws_region" {
  type        = string
  description = "The region Terraform deploys your infra"
  default = ""
}

# VPC variables
variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
  default = ""
}

variable "instance_tenancy" {
  type        = string
  description = "the tenancy of existing VPCs from dedicated to default instantly"
  default = "default"
}

variable "is_enabled_dns_support" {
  type        = bool
  description = "enabling dns support"
  default = true
}

variable "is_enabled_dns_hostnames" {
  type        = bool
  description = "enabling dns hostnames"
  default = true
}

variable "cidr_block" {
  description = "ingress/egress cidr block"
  type        = string
  default = "0.0.0.0/0"
}

# Subnet variables
variable "aws_az_1a" {
  type        = string
  description = "The region Terraform deploys your infra"
  default = null
}

variable "aws_az_1b" {
  type        = string
  description = "The region Terraform deploys your infra"
  default = null
}

variable "pub_cidr1_subnet" {
  type        = string
  description = "CIDR block for the  1st public subnet"
  default = null
}

variable "pub_cidr2_subnet" {
  type        = string
  description = "CIDR block for the 2nd public subnet"
  default = null
}

variable "priv_cidr3_subnet" {
  type        = string
  description = "CIDR block for the 1st private subnet"
  default = null
}

variable "priv_cidr4_subnet" {
  type        = string
  description = "CIDR block for the 2nd private subnet"
  default = null
}

variable "s3_bucket_arn" {
  type        = string
  description = "s3 bucket arn for vpc flow logs"
  default = null
}

# Tags variables
variable "env" {
  type        = string
  description = "environment name"
  default = null
}

variable "managed_by" {
  type        = string
  description = "managed by tr or cfn"
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