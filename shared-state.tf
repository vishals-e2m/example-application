data "terraform_remote_state" "vishalproject" {
  backend = "remote"
  config = {
    hostname     = "vishal-company.scalr.io"
    organization = "env-v0oqh6fgu19qe9nru"
    workspaces = {
      name = "example-appliaction"
    }
  }
}