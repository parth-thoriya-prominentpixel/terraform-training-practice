#terraform {
#  cloud {
#    organization = "parth-thoriya-prominentpixel"
#    workspaces {
#      name = "terraform-training-practice"
#    }
#  }
#}
terraform {
  backend "remote" {
    organization = "parth-thoriya-prominentpixel"

    workspaces {
      name = "terraform-training-practice"
    }
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}




# Default
provider "aws" {
  region     = "us-east-1"
  assume_role {
    role_arn = getenv("TFC_AWS_RUN_ROLE_ARN")
  }
}
