module "network" {
  source = "./modules/network"

  env      = local.env
  eks_name = local.eks_name
  zone1    = local.zone1
  zone2    = local.zone2
}

module "eks" {
  source = "./modules/eks"

  env                = local.env
  eks_name           = local.eks_name
  eks_version        = local.eks_version
  private_subnet_ids = module.network.private_subnet_ids
}

module "efs" {
  source = "./modules/efs"

  private_subnet_ids        = module.network.private_subnet_ids
  cluster_security_group_id = module.eks.cluster_security_group_id
}

module "addons" {
  source = "./modules/addons"

  cluster_name       = module.eks.cluster_name
  vpc_id             = module.network.vpc_id
  region             = local.region
  efs_file_system_id = module.efs.file_system_id
  oidc_provider_arn  = module.eks.oidc_provider_arn
  oidc_issuer_url    = module.eks.oidc_issuer_url

  providers = {
    aws        = aws
    helm       = helm
    kubernetes = kubernetes
  }

  depends_on = [module.eks]
}

module "iam" {
  source = "./modules/iam"

  cluster_name = module.eks.cluster_name
  environment  = local.env
  eks_name     = local.eks_name
}
