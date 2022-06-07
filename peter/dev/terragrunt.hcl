remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket         = "jjb-tf"
    dynamodb_table = "jjb-tf-lock"
    region         = "eu-central-1"

    key = "${path_relative_to_include()}/terraform.tfstate"
  }
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  region  = "eu-central-1"
}
EOF
}

terraform {
  extra_arguments "plan" {
    commands = ["plan"]

    arguments = [
      "-lock=false",
    ]
  }
}
