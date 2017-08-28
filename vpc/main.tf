module "vpc" {
  source = "github.com/terraform-community-modules/tf_aws_vpc"

  name = "datagov-terragrunt"

  cidr = "10.0.0.0/16"
  private_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets   = ["10.0.101.0/24", "10.0.102.0/24"]
  database_subnets = ["10.0.201.0/24", "10.0.202.0/24"]

  enable_nat_gateway = "true"
  single_nat_gateway = "true"

  azs      = ["us-east-1a", "us-east-1b"]

  tags {
    "Terraform" = "true"
  }
}
