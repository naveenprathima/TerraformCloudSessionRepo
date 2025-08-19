variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "staging"
}
variable "create_s3_bucket" {
  description = "Flag to create S3 bucket"
  type        = bool
  default     = true
}

variable "enable_versioning" {
  description = "Enable versioning on S3 bucket if created"
  type        = bool
  default     = false
}
variable "instance_type_dev" {
  description = "Instance type for dev and staging"
  type        = string
  default     = "t2.small"

}
variable "instance_type_prod" {
  description = "Instance type for production"
  type        = string
  default     = "m5.large"

}
variable "ami_id" {
  description = "AMI ID for Ec2 instance"
  type        = string
  default     = "ami-0de716d6197524dd9"
}