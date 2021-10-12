# providers variables
variable "aws_region" {
  type        = string
  description = " aws region to deploy infra"
}

# ami
variable "ami" {
  type = string
  description = "redhat ami"
  default = ""
}

# instance type
variable "instance_type" {
  type = string
  description = "instance type"
  default = ""
}

# root volume size
variable "root_volume_size" {
  type = string
  description = "root volume size"
  default = ""
}

# ebs volume type
variable "ebs_volume_type" {
  type = string
  description = "ebs volume type"
  default = ""
}

# tag variables
variable "env" {
  type = string
}
variable "managed_by" {
  type        = string
  description = "managed by tr or cfn"
}

variable "owner" {
  type        = string
  description = "owner of the resources"
}

variable "giturl" {
  type        = string
  description = "git url to the template"
}