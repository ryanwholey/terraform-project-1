resource "tfe_workspace" "workspace" {
  name         = "terraform-project-1"
  organization = "ryanwholey"

  vcs_repo {
    identifier = "ryanwholey/terraform-project-1"
    oauth_token_id = var.oauth_token_id
  }

  working_directory = "terraform/src"
}

