output "cluster_endpoint" {
  value = aws_eks_cluster.vault_cluster.endpoint
}

output "cluster_certificate_authority_data" {
  value = aws_eks_cluster.vault_cluster.certificate_authority[0].data
}
