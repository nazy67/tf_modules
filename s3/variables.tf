variable "main_bucket_id" {
  type = string
  description = "main bucket id"
  default = ""
}

variable "ignore_public_acls" {
  type = bool
  description = "ignore public acls"
  default = ""
}

variable "restrict_public_buckets" {
  type = bool
  description = "restrict public buckets"
  default = ""
}

variable "block_public_acls" {
  type = bool
  description = "block public acls"
  default = ""
}

variable "lock_public_policy" {
  type = bool
  description = "lock public policy"
  default = ""
}

variable "bucket_name" {
  type = string
  description = "bucket name"
  default = ""
}

variable "is_acl" {
  type = string
  description = "access control list"
  default = ""
}

# Tag variables
variable "env" {
  type = string
  description = "environment"
  default = ""
}

variable "tag_name" {
  type = string
  description = "tag name"
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