variable "image" {
  default = "Ubuntu 16.04"
}

variable "flavor" {
  default = "t2.small"
}

variable "ssh_key_file" {
  default = "~/.ssh/demo-key.pem"
}

variable "ssh_user_name" {
  default = "ubuntu"
}

variable "external_gateway" {
  default = "497c1f11-0cbb-4e94-8b6e-339945ea73d1"
}

variable "pool" {
  default = "provider"
}
