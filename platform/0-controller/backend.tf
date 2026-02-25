terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "kandreasyan"

    workspaces {
      name = "platform-controller"
    }
  }
}