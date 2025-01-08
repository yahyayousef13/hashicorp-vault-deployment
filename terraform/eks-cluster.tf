resource "aws_eks_cluster" "vault_cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = aws_subnet.public[*].id
  }
}

resource "aws_eks_node_group" "vault_nodes" {
  cluster_name  = aws_eks_cluster.vault_cluster.name
  node_role_arn = aws_iam_role.node_role.arn

  scaling_config {
    desired_size = var.desired_capacity
    max_size     = var.max_capacity
    min_size     = var.min_capacity
  }

  instance_types = [var.node_instance_type]
}
