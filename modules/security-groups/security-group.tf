resource "aws_security_group" "my_sg" {
  name        = "${var.sg_name}"
  description = "${var.sg_description}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "6" #https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    cidr_blocks = ["201.75.0.0/16"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
