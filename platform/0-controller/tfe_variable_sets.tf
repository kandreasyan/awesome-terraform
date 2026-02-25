resource "tfe_variable_set" "project" {
  for_each = local.tfe_environments

  name         = "${local.project_name}-${each.key}-vars"
  description  = "Common variables for ${each.key}"
  organization = local.tfe_organization
}

resource "tfe_project_variable_set" "project" {
  for_each = local.tfe_environments

  variable_set_id = tfe_variable_set.project[each.key].id
  project_id      = tfe_project.main[each.key].id
}

# Variables
resource "tfe_variable" "aws_region" {
  for_each = local.tfe_environments

  key             = "aws_region"
  value           = each.value.aws_region
  category        = "terraform"
  description     = "AWS Region"
  variable_set_id = tfe_variable_set.project[each.key].id
}

resource "tfe_variable" "aws_account_id" {
  for_each = local.tfe_environments

  key             = "aws_account_id"
  value           = each.value.aws_account_id
  category        = "terraform"
  description     = "AWS Account ID"
  variable_set_id = tfe_variable_set.project[each.key].id
}