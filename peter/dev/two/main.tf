resource "aws_s3_bucket" "this" {
  bucket = "jj-peter-dev-two"
}

variable "something" {
  description = "something"
  type = string
}

output "something" {
  value = "${var.something}-two"
}
