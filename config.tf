terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.83"
    }
  }
}

provider "aws" {
  region = "us-west-1"
 
}



terraform {
  backend "remote" {
    hostname = "vishal-company.scalr.io"
    organization = "env-v0oqh6fgu19qe9nru"
    workspaces {
      name = "demo-workspace"
    }
  }
}