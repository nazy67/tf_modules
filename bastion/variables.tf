# subnet id
variable "subnet_id" {
  type = string
  description = "subnet id"
  default = ""
}

# vpc id
variable "vpc_id" {
  type = string
  description = "vpc id"
  default = ""
}

# ami
variable "image_id" {
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

# key name
variable "key_name" {
  type = string
  description = "key name for bastion host"
  default = ""
}

# associate public ip address
variable "associate_pub_ip_addr" {
  type = string
  description = "associate public ip address"
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

# delete on termination
variable "delete_on_termination" {
  type = bool
  description = "delete on termination"
  default = true
}

# encrypt ebs volume
variable "encrypted" {
  type = bool
  description = "encrypt ebs volume"
  default = true
}

# bastion sg variables
variable "sg_name" {
  type = string
  description = "bastion sg name"
  default = ""
}

variable "rule_type" {
  type = string
  description = "rule type"
  default = ""
}

variable "ssh_port" {
  type = string
  description = "ssh port"
  default = ""
}

variable "protocol_type" {
  type = string
  description = "protocol type"
  default = ""
}

variable "ingress_ssh_local_ip" {
  type = string
  description = "local ip ingress"
  default = ""
}

variable "web_sg" {
  type = string
  description = "web sg"
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