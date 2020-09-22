terraform {
  backend "remote" {
    organization = "WilsonSo"

    workspaces {
      name = "terraform-cloud-tier2"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

data "terraform_remote_state" "terraform-cloud-tier1" {
  backend = "remote"
  config = {
    organization = "WilsonSo"
    workspaces = {
      name = "terraform-cloud-tier1"
    }
  }
}
