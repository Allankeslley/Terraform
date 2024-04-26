variable "subnet" {
  type = map(any)
  default = {
    subnet1 = {
      az   = "us-east-1a"
      cidr = "10.0.1.0/24"
    }
    subnet2 = {
      az   = "us-east-1b"
      cidr = "10.0.2.0/24"
    }
  }
}

variable "vm" {

  type    = string
  default = "pcd"

}