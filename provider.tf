terraform {
  cloud {
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
  backend "s3" {
    bucket = "digicla-s3-terraform-state-use1-dev"
    key = "parth-thoriya/us-east-1/dev/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}



# Default
provider "aws" {
  region     = "us-east-1"

}
