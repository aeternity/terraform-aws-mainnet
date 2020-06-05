variable "vault_addr" {
  description = "Vault server URL address"
}

variable "bootstrap_version" {
  default = "v2.10.0"
}

variable "package" {
  default = "https://releases.aeternity.io/aeternity-5.5.3-ubuntu-x86_64.tar.gz"
}
