resource "aws_kms_key" "kms_key" {
    description = "KMS key to encrypt root disk"
    tags {
        Name = "disk-encryption-key"
    }
}