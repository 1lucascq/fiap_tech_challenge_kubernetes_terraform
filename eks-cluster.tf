resource "aws_eks_cluster" "eks-cluster" {
  name     = var.projectName
  role_arn = var.labRole

  vpc_config {
    subnet_ids         = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.regionDefault}e"]
    security_group_ids = [aws_security_group.sg.id]
  }

  access_config {
    authentication_mode = var.accessConfig
    bootstrap_cluster_creator_admin_permissions = true
  }

  bootstrap_self_managed_addons = false
}


import {
  to = aws_eks_cluster.eks-cluster
  id = "tc-fiap"
}