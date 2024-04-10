module "aws_deploy-main-ap-southeast-1" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.3.0"
  env    = "main"

  static_nodes   = 3

  instance_type  = "c6i.large"
  instance_types = ["c6i.large", "c5.large", "m5.large", "t3.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 40
  additional_storage      = true
  additional_storage_size = 200

  tags = {
    role = "aenode"
    env  = "main"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/main"
  }

  providers = {
    aws = aws.ap-southeast-1
  }
}

module "aws_deploy-main-eu-north-1" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.3.0"
  env    = "main"

  static_nodes   = 3

  instance_type  = "t3.large"
  instance_types = ["t3.large", "c5.large", "m5.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 40
  additional_storage      = true
  additional_storage_size = 200

  tags = {
    role = "aenode"
    env  = "main"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/main"
  }

  providers = {
    aws = aws.eu-north-1
  }
}

module "aws_deploy-main-us-west-2" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.3.0"
  env    = "main"

  static_nodes   = 3

  instance_type  = "t3.large"
  instance_types = ["t3.large", "c5.large", "c6i.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 40
  additional_storage      = true
  additional_storage_size = 200

  tags = {
    role = "aenode"
    env  = "main"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/main"
  }

  providers = {
    aws = aws.us-west-2
  }
}

module "aws_deploy-main-us-east-2" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.3.0"
  env    = "main"

  static_nodes   = 3

  instance_type  = "t3.large"
  instance_types = ["t3.large", "c5.large", "c6i.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 40
  additional_storage      = true
  additional_storage_size = 200

  tags = {
    role = "aenode"
    env  = "main"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/main"
  }

  providers = {
    aws = aws.us-east-2
  }
}

# Monitoring nodes

module "aws_deploy-main_mon-eu-north-1" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.3.0"
  env    = "main_mon"

  spot_nodes_min = 1
  spot_nodes_max = 1

  instance_type  = "t3.medium"
  instance_types = ["t3.medium", "t3.large", "c5.large", "m5.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 40
  additional_storage      = true
  additional_storage_size = 200

  tags = {
    role = "aenode"
    env  = "main_mon"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/main_mon@eu-north-1"
  }

  providers = {
    aws = aws.eu-north-1
  }
}

module "aws_deploy-main_backup_full-eu-north-1" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.3.0"
  env    = "main_backup"

  static_nodes = 1

  instance_type  = "t3.medium"
  instance_types = ["t3.medium", "t3.large", "c5.large", "m5.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 24
  additional_storage      = true
  additional_storage_size = 1000

  tags = {
    role = "aenode"
    env  = "main_backup"
    kind = "full"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/main_backup_full"
  }

  providers = {
    aws = aws.eu-north-1
  }
}

module "aws_deploy-main_backup_light-eu-north-1" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.3.0"
  env    = "main_backup"

  static_nodes = 1

  instance_type  = "t3.medium"
  instance_types = ["t3.medium", "t3.large", "c5.large", "m5.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 24
  additional_storage      = true
  additional_storage_size = 1000

  tags = {
    role = "aenode"
    env  = "main_backup"
    kind = "light"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/main_backup_light"
  }

  providers = {
    aws = aws.eu-north-1
  }
}

resource "null_resource" "ips1" {
  triggers = {
    depends_on = join(",", module.aws_deploy-main-ap-southeast-1.static_node_ips)
  }
}

resource "null_resource" "ips2" {
  triggers = {
    depends_on = join(",", module.aws_deploy-main-eu-north-1.static_node_ips)
  }
}

resource "null_resource" "ips3" {
  triggers = {
    depends_on = join(",", module.aws_deploy-main-us-west-2.static_node_ips)
  }
}

resource "null_resource" "ips4" {
  triggers = {
    depends_on = join(",", module.aws_deploy-main-us-east-2.static_node_ips)
  }
}
