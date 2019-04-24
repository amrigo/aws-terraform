output "public_dns" {
  description = "Public DNS test instance"
  value       = "${aws_instance.test.public_dns}"
}
