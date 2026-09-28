moved {
  from = aws_vpc.main
  to   = module.network.aws_vpc.main
}

moved {
  from = aws_internet_gateway.igw
  to   = module.network.aws_internet_gateway.igw
}

moved {
  from = aws_subnet.private_zone1
  to   = module.network.aws_subnet.private_zone1
}

moved {
  from = aws_subnet.private_zone2
  to   = module.network.aws_subnet.private_zone2
}

moved {
  from = aws_subnet.public_zone1
  to   = module.network.aws_subnet.public_zone1
}

moved {
  from = aws_subnet.public_zone2
  to   = module.network.aws_subnet.public_zone2
}

moved {
  from = aws_eip.nat-epi
  to   = module.network.aws_eip.nat-epi
}

moved {
  from = aws_nat_gateway.nat-ngw
  to   = module.network.aws_nat_gateway.nat-ngw
}

moved {
  from = aws_route_table.private
  to   = module.network.aws_route_table.private
}

moved {
  from = aws_route_table.public
  to   = module.network.aws_route_table.public
}

moved {
  from = aws_route_table_association.private_zone1
  to   = module.network.aws_route_table_association.private_zone1
}

moved {
  from = aws_route_table_association.private_zone2
  to   = module.network.aws_route_table_association.private_zone2
}

moved {
  from = aws_route_table_association.public_zone1
  to   = module.network.aws_route_table_association.public_zone1
}

moved {
  from = aws_route_table_association.public_zone2
  to   = module.network.aws_route_table_association.public_zone2
}

moved {
  from = aws_iam_role.eks
  to   = module.eks.aws_iam_role.eks
}

moved {
  from = aws_iam_role_policy_attachment.eks
  to   = module.eks.aws_iam_role_policy_attachment.eks
}

moved {
  from = aws_eks_cluster.eks
  to   = module.eks.aws_eks_cluster.eks
}

moved {
  from = aws_iam_role.nodes
  to   = module.eks.aws_iam_role.nodes
}

moved {
  from = aws_iam_role_policy_attachment.amazon-eks-worker-node-policy
  to   = module.eks.aws_iam_role_policy_attachment.amazon-eks-worker-node-policy
}

moved {
  from = aws_iam_role_policy_attachment.amazon-eks-cni-policy
  to   = module.eks.aws_iam_role_policy_attachment.amazon-eks-cni-policy
}

moved {
  from = aws_iam_role_policy_attachment.amazon-eks-container-registry-read-policy
  to   = module.eks.aws_iam_role_policy_attachment.amazon-eks-container-registry-read-policy
}

moved {
  from = aws_eks_node_group.general
  to   = module.eks.aws_eks_node_group.general
}

moved {
  from = aws_eks_addon.pod_identity
  to   = module.addons.aws_eks_addon.pod_identity
}

moved {
  from = aws_iam_role.cluster_autoscaler
  to   = module.addons.aws_iam_role.cluster_autoscaler
}

moved {
  from = aws_iam_policy.cluster_autoscaler
  to   = module.addons.aws_iam_policy.cluster_autoscaler
}

moved {
  from = aws_iam_role_policy_attachment.cluster_autoscaler
  to   = module.addons.aws_iam_role_policy_attachment.cluster_autoscaler
}

moved {
  from = aws_eks_pod_identity_association.cluster_autoscaler
  to   = module.addons.aws_eks_pod_identity_association.cluster_autoscaler
}

moved {
  from = helm_release.cluster_autoscaler
  to   = module.addons.helm_release.cluster_autoscaler
}

moved {
  from = data.aws_iam_policy_document.aws_lbc
  to   = module.addons.data.aws_iam_policy_document.aws_lbc
}

moved {
  from = aws_iam_role.aws_lbc
  to   = module.addons.aws_iam_role.aws_lbc
}

moved {
  from = aws_iam_policy.aws_lbc
  to   = module.addons.aws_iam_policy.aws_lbc
}

moved {
  from = aws_iam_role_policy_attachment.aws_lbc
  to   = module.addons.aws_iam_role_policy_attachment.aws_lbc
}

moved {
  from = aws_eks_pod_identity_association.aws_lbc
  to   = module.addons.aws_eks_pod_identity_association.aws_lbc
}

moved {
  from = helm_release.aws_lbc
  to   = module.addons.helm_release.aws_lbc
}

moved {
  from = helm_release.metrics_server
  to   = module.addons.helm_release.metrics_server
}


moved {
  from = aws_iam_user.developer
  to   = module.iam.aws_iam_user.developer
}

moved {
  from = aws_iam_policy.developer_eks
  to   = module.iam.aws_iam_policy.developer_eks
}

moved {
  from = aws_iam_user_policy_attachment.developer_eks
  to   = module.iam.aws_iam_user_policy_attachment.developer_eks
}

moved {
  from = aws_eks_access_entry.developer
  to   = module.iam.aws_eks_access_entry.developer
}

moved {
  from = aws_iam_role.eks_admin
  to   = module.iam.aws_iam_role.eks_admin
}

moved {
  from = aws_iam_policy.eks_admin
  to   = module.iam.aws_iam_policy.eks_admin
}

moved {
  from = aws_iam_role_policy_attachment.eks_admin
  to   = module.iam.aws_iam_role_policy_attachment.eks_admin
}

moved {
  from = aws_iam_user.manager
  to   = module.iam.aws_iam_user.manager
}

moved {
  from = aws_iam_policy.eks_assume_admin
  to   = module.iam.aws_iam_policy.eks_assume_admin
}

moved {
  from = aws_iam_user_policy_attachment.manager
  to   = module.iam.aws_iam_user_policy_attachment.manager
}

moved {
  from = aws_eks_access_entry.manager
  to   = module.iam.aws_eks_access_entry.manager
}
