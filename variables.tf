variable "vault_addr" {
  description = "Vault server URL address"
}

variable "bootstrap_version" {
  default = "v2.13.1"
}

variable "package" {
  default = "https://releases.aeternity.io/aeternity-5.5.4-ubuntu-x86_64.tar.gz"
}
