resource "aws_eks_cluster" "eks-cluster" {
  name     = var.projectName
  role_arn = var.labRole

  vpc_config {
    subnet_ids         = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.regionDefault}e"]
    security_group_ids = [
      data.aws_security_group.eks_cluster_sg.id,
      aws_security_group.sg.id              
    ]
  }

  access_config {
    authentication_mode = var.accessConfig
  }
}

import {
  to = aws_eks_cluster.eks-cluster
  id = "arn:aws:eks:us-east-1:062491649647:cluster/tc-fiap"
}