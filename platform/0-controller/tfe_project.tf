resource "tfe_project" "main" {
  for_each = local.tfe_environments

  organization = local.tfe_organization
  name         = "${local.project_name}-${each.key}"
}