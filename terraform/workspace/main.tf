resource "tfe_workspace" "workspace" {
  name         = "terraform-project-1"
  organization = "ryanwholey"

  vcs_repo {
    identifier = "ryanwholey/terraform-project-1"
    oauth_token_id = data.tfe_oauth_client.client.oauth_token_id
  }

  working_directory = "terraform/src"
}

data "tfe_oauth_client" "client" {
  oauth_client_id = var.oauth_client_id
}
