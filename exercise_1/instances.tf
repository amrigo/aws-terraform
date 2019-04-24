resource "aws_instance" "test" {
  instance_type               = "${var.instance_type}"
  ami                         = "${var.ami}"
  key_name                    = "${var.key_name}"
  associate_public_ip_address = true
  subnet_id                   = "${aws_subnet.public.id}"
  security_groups             = ["${aws_security_group.allow_ssh.id}"]

  tags {
    Name = "test-instance"
  }
}
