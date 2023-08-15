provider "github" {
  token = ""
}

resource "github_repository" "example" {
  name        = "Terraform-repo"
  description = "Made by Terraform command"
  visibility  = "public"
  auto_init   = true
}

output "data" {
  value = github_repository.example.html_url
}
