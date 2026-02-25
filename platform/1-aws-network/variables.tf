variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
  nullable    = false
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  nullable    = false
}

variable "project" {
  description = "Project Name"
  type        = string
  default     = "platform"
  nullable    = false
}
