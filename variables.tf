variable "vault_addr" {
  description = "Vault server URL address"
}

variable "bootstrap_version" {
  default = "v2.9.2"
}

variable "package" {
  default = "https://releases.aeternity.io/aeternity-5.2.0-ubuntu-x86_64.tar.gz"
}
