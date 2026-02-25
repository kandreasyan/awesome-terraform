locals {
  environment           = replace(terraform.workspace, "^1-aws-network-", "")
  resource_name_prefix = "${var.project}-${local.environment}"
}