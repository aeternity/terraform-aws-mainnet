variable "vault_addr" {
  description = "Vault server URL address"
}

variable "bootstrap_version" {
  default = "v2.9.3"
}

variable "package" {
  default = "https://releases.aeternity.io/aeternity-5.5.1-ubuntu-x86_64.tar.gz"
}
