variable "region" {
  default = "us-east-1"
}

variable "zone" {
  default = "us-east-1a"
}

variable "amiID" {
  type = map(any)
  default = {
    "us-east-1" = "ami-0b6c6ebed2801a5cb"
    "us-west-2" = "ami-0b898040803850657"
  }
}