variable "vault_addr" {
  description = "Vault server URL address"
}

variable "bootstrap_version" {
  default = "v2.6.6"
}

variable "package" {
  default = "https://releases.ops.aeternity.com/aeternity-4.2.1-ubuntu-x86_64.tar.gz"
}
