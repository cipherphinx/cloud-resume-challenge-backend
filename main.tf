terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
    godaddy = {
      source  = "n3integration/godaddy"
      version = "1.9.1"
    }
  }


  cloud {
    organization = "phinx-corporation"

    workspaces {
      name = "cloud-resume-backend"
    }
  }

}

provider "aws" {
  region = var.region
}

/*
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}
*/

locals {
  accountID = data.aws_caller_identity.current.account_id
}

data "aws_caller_identity" "current" {}

