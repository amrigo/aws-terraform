resource "aws_ami_copy" "ami-copy" {
    name = "terraform-ami-encrypted-copy"
    description = "A copy of ami-090f10efc254eaf55"
    source_ami_id = "ami-090f10efc254eaf55"
    source_ami_region = "eu-central-1"
    encrypted = true

    tags {
        Name = "ami-090f10efc254eaf55-copy"
    }
}