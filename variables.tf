variable "vault_addr" {
  description = "Vault server URL address"
}

variable "bootstrap_version" {
  default = "v2.2.0"
}

variable "package" {
  default = "https://releases.ops.aeternity.com/aeternity-2.5.0-ubuntu-x86_64.tar.gz"
}
