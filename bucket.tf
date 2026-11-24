resource "aws_s3_bucket" "mys3" {
bucket = "terraform.demo.babu1.bucket"
depends_on = [aws_instance.myinstance]
}
