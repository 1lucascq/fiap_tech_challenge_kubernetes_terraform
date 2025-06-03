resource "aws_eks_access_entry" "eks-access-entry" {
  cluster_name      = aws_eks_cluster.eks-cluster.name
  principal_arn     = var.principalArn
  kubernetes_groups = ["fiap"]
  type              = "STANDARD"
}

import {
  to = aws_eks_access_entry.eks-access-entry
  id = "tc-fiap:arn:aws:iam::062491649647:role/voclabs"
}