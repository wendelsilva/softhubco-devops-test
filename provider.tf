provider "aws" {
  shared_config_files      = ["/home/wendel/.aws/config"]
  shared_credentials_files = ["/home/wendel/.aws/credentials"]
  profile                  = "wendelsilva"
}

provider "kind" {}