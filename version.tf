terraform {
  required_version = ">= 1.9.0"

  cloud {
    organization = "maryam-lab"

    workspaces {
      name = "github-as-code"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {}