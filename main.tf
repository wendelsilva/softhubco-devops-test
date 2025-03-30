terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
    }
    kind = {
      source = "tehcyx/kind"
      version = "0.8.0"
    }
  }
}