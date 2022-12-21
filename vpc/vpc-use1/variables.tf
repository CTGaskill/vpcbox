# Set variables
variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "availability_zone" {
  type        = list(string)
  description = "Availability Zone used by subnet"
  default     = ["us-east-1a", "us-east-1b", "us-east-c"]
}

variable "default_route" {
  type        = string
  description = "Default Route from and to internet"
  default     = "0.0.0.0/0"
}