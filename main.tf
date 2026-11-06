resource "github_repository" "demo" {
  name        = var.repo_name
  description = "A repo created and configured by Terraform."
  visibility  = "public"
  auto_init   = true

  has_issues             = true
  has_wiki               = false
  delete_branch_on_merge = true
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.demo.node_id
  pattern       = "main"

  allows_force_pushes = false
  allows_deletions    = false

  required_pull_request_reviews {
    required_approving_review_count = 0
  }
}

resource "github_issue_label" "this" {
  for_each = var.labels

  repository = github_repository.demo.name
  name       = each.key
  color      = each.value
}