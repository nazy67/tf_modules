variable "main_bucket_id" {
  type = string
  description = "main bucket id"
  default = null
}

variable "ignore_public_acls" {
  type = bool
  description = "ignore public acls"
  default = null
}

variable "restrict_public_buckets" {
  type = bool
  description = "restrict public buckets"
  default = null
}

variable "block_public_acls" {
  type = bool
  description = "block public acls"
  default = null
}

variable "lock_public_policy" {
  type = bool
  description = "lock public policy"
  default = null
}

variable "bucket_name" {
  type = string
  description = "bucket name"
  default = null
}

variable "is_acl" {
  type = string
  description = "access control list"
  default = null
}

# Tag variables
variable "tags" {
  description = "tags to assign to the bucket"
  type        = map(string)
  default     = {}
}

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
  default = ""
}