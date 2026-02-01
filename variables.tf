variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1" # CHANGE if you prefer
}

variable "instance_count" {
  description = "Number of web servers to create"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "EC2 type"
  type        = string
  default     = "t2.micro" # Free tier friendly
}

variable "key_pair_name" {
  description = "Name of an existing AWS EC2 key pair"
  type        = string
  # No default. Must set from Jenkins or tfvars.
}

variable "name_prefix" {
  description = "Name prefix for instances"
  type        = string
  default     = "web"
}

variable "env" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}

variable "ansible_inventory_path" {
  description = "Where to write hosts.ini (relative to this repo root in Jenkins workspace)"
  type        = string
  default     = "../ansible-playbooks/inventory/hosts.ini"
}
