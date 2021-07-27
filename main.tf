module "aws_deploy-main-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "main"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes   = 3
  spot_nodes_min = 7
  spot_nodes_max = 7

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-18.04-v1616681631"
  root_volume_size = 40

  additional_storage      = true
  additional_storage_size = 200
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

  static_nodes   = 3
  spot_nodes_min = 7
  spot_nodes_max = 7

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-18.04-v1616681631"
  root_volume_size = 40

  additional_storage      = true
  additional_storage_size = 200
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

  static_nodes   = 3
  spot_nodes_min = 7
  spot_nodes_max = 7

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-18.04-v1616681631"
  root_volume_size = 40

  additional_storage      = true
  additional_storage_size = 200
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

  static_nodes   = 3
  spot_nodes_min = 7
  spot_nodes_max = 7

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-18.04-v1616681631"
  root_volume_size = 40

  additional_storage      = true
  additional_storage_size = 200
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
  ami_name      = "aeternity-ubuntu-18.04-v1616681631"

  additional_storage      = true
  additional_storage_size = 200
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
  ami_name      = "aeternity-ubuntu-18.04-v1616681631"

  additional_storage      = true
  additional_storage_size = 200
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
  ami_name      = "aeternity-ubuntu-18.04-v1616681631"

  additional_storage      = true
  additional_storage_size = 200
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
  ami_name      = "aeternity-ubuntu-18.04-v1616681631"

  additional_storage      = true
  additional_storage_size = 200
  snapshot_filename       = "mnesia_main_v-1_latest.tgz"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-north-1"
  }
}

module "aws_deploy-main_backup_full-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.5.0"
  env               = "main_backup"
  kind              = "full"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr
  node_config       = "secret/aenode/config/main_backup_full"
  aeternity         = { package = "unused" }

  static_nodes            = 1
  spot_price              = "0.07"
  instance_type           = "t3.medium"
  ami_name                = "aeternity-ubuntu-18.04-v1616681631"
  additional_storage      = true
  additional_storage_size = 200

  providers = {
    aws = "aws.eu-north-1"
  }
}

module "aws_deploy-main_backup_light-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.5.0"
  env               = "main_backup"
  kind              = "light"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr
  node_config       = "secret/aenode/config/main_backup_light"
  aeternity         = { package = "unused" }

  static_nodes            = 1
  spot_price              = "0.07"
  instance_type           = "t3.medium"
  ami_name                = "aeternity-ubuntu-18.04-v1616681631"
  additional_storage      = true
  additional_storage_size = 200

  providers = {
    aws = "aws.eu-north-1"
  }
}

resource "null_resource" "ips1" {
  triggers = {
    depends_on = "${join(",", module.aws_deploy-main-ap-southeast-1.static_node_ips)}"
  }
}

resource "null_resource" "ips2" {
  triggers = {
    depends_on = "${join(",", module.aws_deploy-main-eu-north-1.static_node_ips)}"
  }
}

resource "null_resource" "ips3" {
  triggers = {
    depends_on = "${join(",", module.aws_deploy-main-us-west-2.static_node_ips)}"
  }
}

resource "null_resource" "ips4" {
  triggers = {
    depends_on = "${join(",", module.aws_deploy-main-us-east-2.static_node_ips)}"
  }
}
