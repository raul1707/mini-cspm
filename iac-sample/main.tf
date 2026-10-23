resource "aws_security_group" "web" {
  name        = "web-sg"
  description = "Web server security group"
  ingress {
    description = "SSH from internal network only"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }
}

resource "aws_s3_bucket" "logs" {
  bucket = "demo-logs-bucket"
}
