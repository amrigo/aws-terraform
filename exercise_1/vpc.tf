resource "aws_vpc" "vpc" {
  cidr_block           = "${var.cidr_blocks["vpc"]}"
  enable_dns_hostnames = true

  tags {
    Name = "test-vpc"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags {
    Name = "test-igw"
  }
}
