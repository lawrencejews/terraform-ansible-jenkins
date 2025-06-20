# Input Variables

# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "ap-northeast-2"  
}

# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "development"
}

# Business Division
variable "software_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "Software"
}