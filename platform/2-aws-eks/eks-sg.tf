# resource "aws_security_group" "eks_ingress" {
#   name   = "${local.resource_name_prefix}-eks-ingress-sg"
#   vpc_id = data.remote_state.aws_network.outputs.vpc.id
# }