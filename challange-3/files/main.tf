terraform {
  required_version = "1.5.6"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.16.1"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}


module "eks_cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-eks-cluster"
  version         = "19.16.0"

  subnets = module.vpc.private_subnets

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 10
      min_capacity     = 1

      instance_type = "t2.medium"
      key_name      = "key"

      additional_security_group_ids = [module.eks_cluster.cluster_security_group_id]
    }
  }

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}