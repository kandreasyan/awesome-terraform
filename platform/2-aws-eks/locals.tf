locals {
  environment           = replace(terraform.workspace, "^2-aws-eks-", "")
  resource_name_prefix = "${var.project}-${local.environment}"
}