locals {
  project_name     = "platform"
  tfe_organization = "kandreasyan"

  tfe_environments = {
    dev = {
      aws_region     = "us-east-1"
      aws_account_id = "111111111111"
    }
    prod-usw1 = {
      aws_region     = "us-west-1"
      aws_account_id = "111111111111"
    }
    prod-sae1 = {
      aws_region     = "sa-east-1"
      aws_account_id = "111111111111"
    }
  }
}