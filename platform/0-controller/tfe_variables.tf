resource "tfe_variable" "environment" {
  for_each = local.tfe_environments

  key          = "environment"
  value        = each.key
  category     = "terraform"
  workspace_id = tfe_workspace.aws_network[each.key].id
  description  = "Environment Name"
}


resource "tfe_variable" "aws_region" {
  for_each = local.tfe_environments

  key          = "aws_region"
  value        = each.value.aws_region
  category     = "terraform"
  workspace_id = tfe_workspace.aws_network[each.key].id
  description  = "AWS Region"
}

resource "tfe_variable" "aws_account_id" {
  for_each = local.tfe_environments

  key          = "aws_account_id"
  value        = each.value.aws_account_id
  category     = "terraform"
  workspace_id = tfe_workspace.aws_network[each.key].id
  description  = "AWS Account ID"
}