variable "ami-id" {
  type        = string
  description = "This is the ami id of the EC2"
}
variable "instance_type" {
  type        = map(string)
  description = "This is a instance type of the EC2"
  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.large"
  }
}
variable "region" {
  type        = string
  description = "This is region where the resource will be created"
}