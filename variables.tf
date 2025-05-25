variable "aws_region" {
  description = "Região da AWS"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Nome do cluster EKS"
  default     = "fiap-tech-challenge-cluster"
}

variable "node_instance_type" {
  description = "Tipo das instâncias dos nós"
  default     = "t3.medium"
}