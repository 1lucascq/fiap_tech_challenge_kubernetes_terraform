resource "aws_eks_access_policy_association" "eks-access-policy" {
  cluster_name  = aws_eks_cluster.eks-cluster.name
  policy_arn    = var.policyArn
  principal_arn = var.principalArn

  access_scope {
    type = "cluster"
  }
}

import {
  to = aws_eks_access_policy_association.eks-access-policy
  id = "cluster/tc-fiap/policy-association/arn:aws:iam::062491649647:role/voclabs/arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}