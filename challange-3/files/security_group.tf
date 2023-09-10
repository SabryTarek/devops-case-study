resource "aws_security_group" "eks_cluster" {
  name        = "eks-cluster"
  description = "Security group for the EKS cluster"

  vpc_id = module.vpc.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
