resource "aws_route_table" "route_table_vpc" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags {
    Name = "vpc-route-table"
  }
}

resource "aws_route_table" "route_table_subnet" {
   vpc_id = "${aws_vpc.vpc.id}"

    tags {
        Name = "subnet-route-table"
    }
}

resource "aws_route" "subnet_rt_igw" {
    route_table_id         = "${aws_route_table.route_table_subnet.id}"
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = "${aws_internet_gateway.igw.id}"    
}

resource "aws_route" "vpc_rt_igw" {
  route_table_id         = "${aws_route_table.route_table_vpc.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.igw.id}"
}

resource "aws_route_table_association" "rta_public" {
  subnet_id      = "${aws_subnet.public.id}"
  route_table_id = "${aws_route_table.route_table_subnet.id}"
}

resource "aws_main_route_table_association" "rta_vpc" {
    vpc_id = "${aws_vpc.vpc.id}"
    route_table_id = "${aws_route_table.route_table_vpc.id}"
}
