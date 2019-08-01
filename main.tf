module "aws_deploy-main-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.2.0"
  env               = "main"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 10
  spot_nodes   = 0

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = 1
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.ap-southeast-1"
  }
}

module "aws_deploy-main-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.2.0"
  env               = "main"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 10
  spot_nodes   = 0

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = 1
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-north-1"
  }

  dependency = module.aws_deploy-main-ap-southeast-1.static_node_ips
}

module "aws_deploy-main-us-west-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.2.0"
  env               = "main"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 10
  spot_nodes   = 0

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = 1
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-west-2"
  }
}

module "aws_deploy-main-us-east-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.2.0"
  env               = "main"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 10
  spot_nodes   = 0

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = 1
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-east-2"
  }

  dependency = module.aws_deploy-main-us-west-2.static_node_ips
}

# Monitoring nodes

module "aws_deploy-main_mon-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.0.0"
  env               = "main_mon"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 0
  spot_nodes   = 1

  spot_price    = "0.03"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1559735157"

  additional_storage      = true
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.ap-southeast-1"
  }
}

module "aws_deploy-main_mon-us-west-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.0.0"
  env               = "main_mon"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 0
  spot_nodes   = 1

  spot_price    = "0.03"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1559735157"

  additional_storage      = true
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-west-2"
  }
}

module "aws_deploy-main_mon-us-east-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.0.0"
  env               = "main_mon"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 0
  spot_nodes   = 1

  spot_price    = "0.03"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1559735157"

  additional_storage      = true
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-east-2"
  }
}

module "aws_deploy-main_mon-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.0.0"
  env               = "main_mon"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 0
  spot_nodes   = 1

  spot_price    = "0.03"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1559735157"

  additional_storage      = true
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-north-1"
  }
}
