# ALB variables
variable "lb_name" {
  type = string
  description = "load balancer name"
  default = null
}

variable "is_internal" {
  type = bool
  description = "internal/internet facing"
  default = false
}

variable "load_balancer_type" {
  type = string
  description = "load balancer type: application"
  default = null
}

variable "security_groups" {
  type = string
  description = "application load balance sg"
  default = null
}

# Tag variables
variable "env" {
  type = string
  description = "environment"
  default = ""
}

variable "managed_by" {
  type        = string
  description = "managed by tf"
  default = ""
}

variable "owner" {
  type        = string
  description = "owner of the resources"
  default = ""
}

variable "giturl" {
  type        = string
  description = "git url to the template"
  default = ""
}