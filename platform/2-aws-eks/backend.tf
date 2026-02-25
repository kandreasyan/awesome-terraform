terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "kandreasyan"

    workspaces {
      prefix = "2-aws-eks-"
    }
  }
}

data "tfe_outputs" "aws_network" {
  organization = "kandreasyan"
  workspace = "1-aws-network-${local.environment}"
}