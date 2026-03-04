terraform {
  backend "s3" {
    bucket = "staticwebsite20266"
    key    = "statefile/backend"
    region = "us-east-1"

  }

}
