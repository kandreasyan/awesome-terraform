resource "tfe_workspace" "aws_network" {
  for_each = local.tfe_environments

  name              = "1-aws-network-${each.key}"
  organization      = local.tfe_organization
  project_id        = tfe_project.main[each.key].id
  terraform_version = "~>1.14.0"
  tags = {
    env  = each.key
    unit = "aws-network"
  }

  trigger_patterns = [
    "platform/1-aws-network/**/*",
  ]
  working_directory = "platform/1-aws-network"

  vcs_repo {
    branch                     = "main"
    github_app_installation_id = "ghain-7V61WP9MqRtjdyvU"
    identifier                 = "kandreasyan/awesome-terraform"
  }
}

resource "tfe_workspace_settings" "aws_network" {
  for_each = local.tfe_environments

  workspace_id = tfe_workspace.aws_network[each.key].id
  auto_apply   = strcontains(each.key, "dev")
}

resource "tfe_workspace" "aws_eks" {
  for_each = local.tfe_environments

  name              = "2-aws-eks-${each.key}"
  organization      = local.tfe_organization
  project_id        = tfe_project.main[each.key].id
  terraform_version = "~>1.14.0"
  tags = {
    env  = each.key
    unit = "aws-eks"
  }

  trigger_patterns = [
    "platform/2-aws-eks/**/*",
  ]
  working_directory = "platform/2-aws-eks"

  vcs_repo {
    branch                     = "main"
    github_app_installation_id = "ghain-7V61WP9MqRtjdyvU"
    identifier                 = "kandreasyan/awesome-terraform"
  }
}

resource "tfe_workspace_settings" "aws_eks" {
  for_each = local.tfe_environments

  workspace_id = tfe_workspace.aws_eks[each.key].id
  auto_apply   = strcontains(each.key, "dev")
}