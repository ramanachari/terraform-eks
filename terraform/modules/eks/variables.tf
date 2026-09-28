variable "env" {
  type = string
}

variable "eks_name" {
  type = string
}

variable "eks_version" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}
