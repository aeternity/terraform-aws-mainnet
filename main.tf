module "aws_deploy-main-ap-southeast-1" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v4.0.0"
  env    = "main"

  static_nodes = 3

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
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v4.0.0"
  env    = "main"

  static_nodes = 3

  # 2026-07-20: t3.large -> m6i.large (fixed-perf, was hitting CPUCreditBalance=0 under load;
  # see ~/aeternity/gitops-all/mpt-cache-pr4623-investigation.md §6). m6i.large keeps 8GiB mem
  # (vs c6i.large's 4GiB) to leave headroom for a possible future MPT read cache.
  instance_type  = "m6i.large"
  instance_types = ["m6i.large", "c6i.large", "c5.large", "m5.large"]
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
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v4.0.0"
  env    = "main"

  static_nodes = 3

  # 2026-07-20: t3.large -> m6i.large — two of these three nodes (35.166.231.86, 52.11.110.179)
  # already hit CPUCreditBalance=0 (hard-throttled) this week. See gitops-all investigation doc.
  instance_type  = "m6i.large"
  instance_types = ["m6i.large", "c6i.large", "c5.large"]
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

# module "aws_deploy-main-us-east-2" {
#   source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v4.0.0"
#   env    = "main"

#   static_nodes = 3

#   instance_type  = "t3.large"
#   instance_types = ["t3.large", "c5.large", "c6i.large"]
#   ami_name       = "aeternity-ubuntu-22.04-v1709639419"

#   root_volume_size        = 40
#   additional_storage      = true
#   additional_storage_size = 200

#   tags = {
#     role = "aenode"
#     env  = "main"
#   }

#   config_tags = {
#     vault_role        = "ae-node"
#     vault_addr        = var.vault_addr
#     bootstrap_version = var.bootstrap_version
#     bootstrap_config  = "secret2/aenode/config/main"
#   }

#   providers = {
#     aws = aws.us-east-2
#   }
# }

# Monitoring nodes

module "aws_deploy-main_mon-eu-north-1" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v4.0.0"
  env    = "main_mon"

  static_nodes = 1

  # 2026-07-20: t3.medium -> m6i.large. Declining CPUCreditBalance trend (not yet at 0) per
  # gitops-all investigation doc; fixed before it hits the same wall as uat_mon.
  instance_type  = "m6i.large"
  instance_types = ["m6i.large", "c6i.large", "c5.large", "m5.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 40
  additional_storage      = true
  additional_storage_size = 400

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

# module "aws_deploy-main_backup_full-eu-north-1" {
#   source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v4.0.0"
#   env    = "main_backup"

#   static_nodes = 1

#   instance_type  = "t3.medium"
#   instance_types = ["t3.medium", "t3.large", "c5.large", "m5.large"]
#   ami_name       = "aeternity-ubuntu-22.04-v1709639419"

#   root_volume_size        = 24
#   additional_storage      = true
#   additional_storage_size = 1000

#   tags = {
#     role = "aenode"
#     env  = "main_backup"
#     kind = "full"
#   }

#   config_tags = {
#     vault_role        = "ae-node"
#     vault_addr        = var.vault_addr
#     bootstrap_version = var.bootstrap_version
#     bootstrap_config  = "secret2/aenode/config/main_backup_full"
#   }

#   providers = {
#     aws = aws.eu-north-1
#   }
# }

# module "aws_deploy-main_backup_light-eu-north-1" {
#   source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v4.0.0"
#   env    = "main_backup"

#   static_nodes = 1

#   instance_type  = "t3.medium"
#   instance_types = ["t3.medium", "t3.large", "c5.large", "m5.large"]
#   ami_name       = "aeternity-ubuntu-22.04-v1709639419"

#   root_volume_size        = 24
#   additional_storage      = true
#   additional_storage_size = 1000

#   tags = {
#     role = "aenode"
#     env  = "main_backup"
#     kind = "light"
#   }

#   config_tags = {
#     vault_role        = "ae-node"
#     vault_addr        = var.vault_addr
#     bootstrap_version = var.bootstrap_version
#     bootstrap_config  = "secret2/aenode/config/main_backup_light"
#   }

#   providers = {
#     aws = aws.eu-north-1
#   }
# }

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

# resource "null_resource" "ips4" {
#   triggers = {
#     depends_on = join(",", module.aws_deploy-main-us-east-2.static_node_ips)
#   }
# }
