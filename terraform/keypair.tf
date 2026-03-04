resource "aws_key_pair" "web01login" {
  key_name   = "web01login"
  public_key = file("login.pub")
}