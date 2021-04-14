terraform {
  backend "remote" {
    organization = "ryanwholey"

    workspaces {
      name = "terraform-project-1"
    }
  }
}
