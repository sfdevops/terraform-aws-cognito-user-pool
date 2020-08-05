# ---------------------------------------------------------------------------------------------------------------------
# CREATE AN AWS COGNITO USER POOL
# This example creates an AWS Cognito User Pool that can be used for authentication (identify verification).
# ---------------------------------------------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------------------------------------
# PROVIDER CONFIGURATION
# ---------------------------------------------------------------------------------------------------------------------

provider "aws" {
  version = "~> 3.0"
  region  = var.aws_region
}

# ------------------------------------------------------------------------------
# CREATE THE COGNITO USER POOL
# ------------------------------------------------------------------------------

module "cognito_user_pool" {
  source = "../../"
  name   = var.name
  domain = "mineiros-test"

  schema_attributes = var.schema_attributes
}
