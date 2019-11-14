module "aws_deploy-main-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "main"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 10
  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = true
  additional_storage_size = 100
  snapshot_filename       = "mnesia_main_v-1_latest.tgz"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.ap-southeast-1"
  }
}

module "aws_deploy-main-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "main"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 10
  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = true
  additional_storage_size = 100
  snapshot_filename       = "mnesia_main_v-1_latest.tgz"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-north-1"
  }
}

module "aws_deploy-main-us-west-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "main"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 10
  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = true
  additional_storage_size = 100
  snapshot_filename       = "mnesia_main_v-1_latest.tgz"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-west-2"
  }
}

module "aws_deploy-main-us-east-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "main"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 10
  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = true
  additional_storage_size = 100
  snapshot_filename       = "mnesia_main_v-1_latest.tgz"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-east-2"
  }
}

# Monitoring nodes

module "aws_deploy-main_mon-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "main_mon"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr
  node_config       = "secret/aenode/config/main_mon@ap-southeast-1"

  spot_nodes_min = 1
  spot_nodes_max = 1

  spot_price    = "0.07"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  additional_storage      = true
  additional_storage_size = 100
  snapshot_filename       = "mnesia_main_v-1_latest.tgz"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.ap-southeast-1"
  }
}

module "aws_deploy-main_mon-us-west-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "main_mon"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr
  node_config       = "secret/aenode/config/main_mon@us-west-2"

  spot_nodes_min = 1
  spot_nodes_max = 1

  spot_price    = "0.07"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  additional_storage      = true
  additional_storage_size = 100
  snapshot_filename       = "mnesia_main_v-1_latest.tgz"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-west-2"
  }
}

module "aws_deploy-main_mon-us-east-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "main_mon"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr
  node_config       = "secret/aenode/config/main_mon@us-east-2"

  spot_nodes_min = 1
  spot_nodes_max = 1

  spot_price    = "0.07"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  additional_storage      = true
  additional_storage_size = 100
  snapshot_filename       = "mnesia_main_v-1_latest.tgz"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-east-2"
  }
}

module "aws_deploy-main_mon-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "main_mon"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr
  node_config       = "secret/aenode/config/main_mon@eu-north-1"

  spot_nodes_min = 1
  spot_nodes_max = 1

  spot_price    = "0.07"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  additional_storage      = true
  additional_storage_size = 100
  snapshot_filename       = "mnesia_main_v-1_latest.tgz"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-north-1"
  }
}
