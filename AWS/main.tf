resource "aws_ec2" "static-site" {
  name          = "image-store.com.COM1"
  location      = "IN"
  force_destroy = true
}