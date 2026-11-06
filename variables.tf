variable "repo_name" {
  description = "Name of the repository Terraform creates."
  type        = string
  default     = "tf-managed-demo"
}

variable "labels" {
  description = "Issue labels to create. Key is the label name, value is a hex colour without the #."
  type        = map(string)
  default = {
    "access-request" = "1d76db"
    "offboarding"    = "b60205"
    "patching"       = "fbca04"
  }
}