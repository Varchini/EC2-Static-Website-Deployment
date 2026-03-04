terraform {
  backend "s3" {
    bucket = "terraformstatefile2026"
    key    = "statefile/backend"
    region = "us-east-1"

  }
}