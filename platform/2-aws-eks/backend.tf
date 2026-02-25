terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "kandreasyan"

    workspaces {
      prefix = "2-aws-eks-"
    }
  }
}

data "terraform_remote_state" "aws_network" {
  backend = "remote"

  config = {
    organization = "kandreasyan"
    workspaces = {
      name = "1-aws-network-${local.environment}"
    }
  }
}