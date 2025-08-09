output "instance_ids" {
  description = "IDs of the created EC2 instances"
  value       = [for instance in aws_instance.example : instance.id]
}

output "public_ips" {
  description = "Public IPs of EC2 instances"
  value       = [for instance in aws_instance.example : instance.public_ip]
}

