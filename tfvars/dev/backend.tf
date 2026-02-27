terraform {
  backend "s3" {
bucket         = "remote-state-hamsa-dev" # Replace with your bucket name
key            = "remote-state.tfstate"      # Desired state file name/path
region         = "us-east-1"                     # Replace with your AWS region
encrypt        = true                            # Enable encryption
use_lockfile = true
  }
}