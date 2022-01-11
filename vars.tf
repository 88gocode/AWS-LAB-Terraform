variable "AWS_REGION" {
  default = "ap-northeast-3"
}

variable "AWS_AZ" {
  default = "ap-northeast-3a"
}

variable "vpc_cidr_lab0" {
    default = "10.1.0.0/16"
    description = "the vpc cidr"
}

variable "public_subnet_cidr_lab0" {
    default = "10.1.1.0/24"
    description = "The cidr of the public subnet"
}


variable "key_name" {
    default = "my-test"
}
