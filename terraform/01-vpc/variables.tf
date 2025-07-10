variable "project_name" {
    default = "task2-infra"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
    default = {
        Project = "task2-infra"
        Terraform = "true"
    }
}

variable "public_subnet_cidrs" {
    default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
    default = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "database_subnet_cidrs" {
  default = []
}


variable "is_peering_required" {
  default = true
}