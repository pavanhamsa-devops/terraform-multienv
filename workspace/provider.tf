terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }

  backend "s3" {
    bucket         = "remote-state-hamsa" # Replace with your bucket name
    key            = "remote-state.tfstate"      # Desired state file name/path
    region         = "us-east-1"                     # Replace with your AWS region
    encrypt        = true                            # Enable encryption
    use_lockfile = true
  }

}

provider "aws" {
  region = "us-east-1"
}