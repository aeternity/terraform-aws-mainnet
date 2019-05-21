module "aws_deploy-main-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.0.0"
  env               = "main"
  bootstrap_version = "v2.0.1"
  vault_role        = "ae-node"
  vault_addr        = "${var.vault_addr}"

  static_nodes = 10
  spot_nodes   = 0

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = 1
  additional_storage_size = 30

  aeternity = {
    package = "https://releases.ops.aeternity.com/aeternity-2.4.0-ubuntu-x86_64.tar.gz"
  }

  providers = {
    aws = "aws.ap-southeast-1"
  }
}

module "aws_deploy-main-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.0.0"
  env               = "main"
  bootstrap_version = "v2.0.1"
  vault_role        = "ae-node"
  vault_addr        = "${var.vault_addr}"

  static_nodes = 10
  spot_nodes   = 0

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = 1
  additional_storage_size = 30

  aeternity = {
    package = "https://releases.ops.aeternity.com/aeternity-2.4.0-ubuntu-x86_64.tar.gz"
  }

  providers = {
    aws = "aws.eu-north-1"
  }

  depends_on = ["${module.aws_deploy-main-ap-southeast-1.static_node_ips}"]
}

module "aws_deploy-main-us-west-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.0.0"
  env               = "main"
  bootstrap_version = "v2.0.1"
  vault_role        = "ae-node"
  vault_addr        = "${var.vault_addr}"

  static_nodes = 10
  spot_nodes   = 0

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = 1
  additional_storage_size = 30

  aeternity = {
    package = "https://releases.ops.aeternity.com/aeternity-2.4.0-ubuntu-x86_64.tar.gz"
  }

  providers = {
    aws = "aws.us-west-2"
  }
}

module "aws_deploy-main-us-east-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.0.0"
  env               = "main"
  bootstrap_version = "v2.0.1"
  vault_role        = "ae-node"
  vault_addr        = "${var.vault_addr}"

  static_nodes = 10
  spot_nodes   = 0

  spot_price       = "0.15"
  instance_type    = "t3.large"
  ami_name         = "aeternity-ubuntu-16.04-v1549009934"
  root_volume_size = 40

  additional_storage      = 1
  additional_storage_size = 30

  aeternity = {
    package = "https://releases.ops.aeternity.com/aeternity-2.4.0-ubuntu-x86_64.tar.gz"
  }

  providers = {
    aws = "aws.us-east-2"
  }

  depends_on = ["${module.aws_deploy-main-us-west-2.static_node_ips}"]
}
