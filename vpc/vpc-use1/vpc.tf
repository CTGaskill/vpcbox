# Create VPC from module
module "vpc_staging" {
  source = "../../modules/vpc/vpc-use1/"

  environment_name         = "staging"
  vpc_cidr                 = "10.1.0.0/16"
  public_subnet_cidr_az_a  = ["10.1.0.0/22"]
  private_subnet_cidr_az_a = ["10.1.12.0/22"]

  additional_tags = {
    Environment = "Staging"
    Owner       = "Carl Gaskill"
  }
}