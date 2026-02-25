terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "kandreasyan"

    workspaces {
      prefix = "1-aws-network-"
    }
  }
}