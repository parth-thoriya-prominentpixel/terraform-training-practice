variable "prefix_company" {
  type        = string
  description = "Company prefix."
}

variable "company" {
  type        = string
  description = "Company name."
}

variable "project" {
  type        = string
  description = "Project name."
  default     = "terraform-task"
}

variable "application" {
  type        = string
  description = "Application name."
  default     = "admn"
}

variable "region" {
  type        = string
  description = "AWS region."
}

variable "env" {
  type        = string
  description = "Deployment environment."
}

variable "repo_url" {
  type        = string
  description = "Repository URL."
  default     = "https://gitlab.com/"
}

variable "account_number" {
  description = "Account Number."
  type        = string
  default     = null
}

variable "role_name" {
  description = "Role name."
  type        = string
  default     = "shared-gitlab-oidc-role"
}

variable "domain_name" {
  description = "Domain name."
  type        = string
  default     = null
}

variable "source_email_address" {
  description = "Source email address."
  type        = string
  default     = null
}
variable "encrypt" {
  type = bool
  default = false
  description = "encrypt"
}
variable "bucket" {
  type = string
  
  description = "bucket for s3 backend"
}
variable "dynamodb_table" {
 type = string
  
}
variable "key" {
  type = string
}
########################################
######## S3 
########################################

variable "s3_bucket_name" {
  type = string   
  default = null
  
}
