variable "regionDefault" {
  default = "us-east-1"
}

variable "projectName" {
  default = "tc-fiap"
}

variable "labRole" {
  default = "arn:aws:iam::062491649647:role/LabRole"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

variable "nodeGroup" {
  default = "fiap"
}

variable "instanceType" {
  default = "t3.medium"
}

variable "principalArn" {
  default = "arn:aws:iam::062491649647:role/voclabs"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}