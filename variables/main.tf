variable "vpcname" {
  type    = string
  default = "myvpc"
}

variable "sshport" {
  type    = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "whitelist" {
  type    = list(string)
  default = ["Value1", "Value2"]
}