resource "aws_ami_copy" "ami-copy" {
    name = "terraform-ami-encrypted-copy"
    description = "A copy of ${var.ami} encrypted"
    source_ami_id = "${var.ami}"
    source_ami_region = "${var.region}"
    encrypted = true
    kms_key_id = "${aws_kms_key.kms_key.arn}"

    tags {
        Name = "${var.ami}-copy"
    }
}