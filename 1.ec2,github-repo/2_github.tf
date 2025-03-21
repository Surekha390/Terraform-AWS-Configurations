terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = "github_pat_11BK3IV5A0z6m********************CPsHqSr3al36RyifXTUUXPDFSQVb2YogPH"
}


resource "github_repository" "example1" {
  name        = "terraform-aws-trials-new"
  description = "My awesome codebase"

  visibility = "public"

}