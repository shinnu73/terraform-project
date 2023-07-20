variable "imageid" {
  default = "ami-04823729c75214919"
}



variable "private_key" {
  default = "deployer"

}

variable "tags" {
  type    = list(any)
  default = ["dev-dept", "prod-dept", "test-dept"]
}

variable "instancetype" {
  type    = list(any)
  default = ["t2.micro", "t2.nano", "t2.small"]

}
