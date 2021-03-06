variable "ignore_public_acls" {
  type        = bool
  description = "ignore public acls"
  default     = true
}

variable "restrict_public_buckets" {
  type        = bool
  description = "restrict public buckets"
  default     = true
}

variable "block_public_acls" {
  type        = bool
  description = "block public acls"
  default     = true
}

variable "block_public_policy" {
  type        = bool
  description = "block public policy"
  default     = true
}

variable "bucket_name" {
  type        = string
  description = "bucket name"
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