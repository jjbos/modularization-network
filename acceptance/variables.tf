variable "cidr_block" {
  description = "The cidr block for my VPC"
  type        = string
  default     = "10.2.0.0/16"
}

variable "subnets" {
  type = map
  default = {
    public-a = {
      az = "eu-west-1a"
      cidr_block = "10.2.0.0/24"
    },
    public-b = {
      az = "eu-west-1b"
      cidr_block = "10.2.1.0/24"
    },
    private-a = {
      az = "eu-west-1a"
      cidr_block = "10.2.3.0/24"
    },
    private-b = {
      az = "eu-west-1b"
      cidr_block = "10.2.4.0/24"
    }
  }
}