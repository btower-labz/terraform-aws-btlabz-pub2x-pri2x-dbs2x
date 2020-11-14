variable "tags" {
  description = "Additional tags."
  type        = map(string)
  default     = {}
}

variable "vpc_tags" {
  description = "Additional tags for VPC."
  type        = map(string)
  default     = {}
}

variable "subnet_tags" {
  description = "Additional tags for Subnets."
  type        = map(string)
  default     = {}
}

variable "public_subnet_tags" {
  description = "Additional tags for Public Subnets."
  type        = map(string)
  default     = {}
}

variable "private_subnet_tags" {
  description = "Additional tags for Private Subnets."
  type        = map(string)
  default     = {}
}

variable "database_subnet_tags" {
  description = "Additional tags for Database Subnets."
  type        = map(string)
  default     = {}
}

variable "nat_tags" {
  description = "Additional tags for NATs."
  type        = map(string)
  default     = {}
}
