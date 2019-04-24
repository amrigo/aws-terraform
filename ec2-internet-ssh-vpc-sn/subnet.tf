resource "aws_subnet" "public" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_blocks["subnet"]}"

  tags {
    Name = "test-subnet"
  }
}
