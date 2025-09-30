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

}



# Default
provider "aws" {
  region     = "us-east-1"

}
