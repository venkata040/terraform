data "aws_ami" "joindevops" {
  owners           = ["137112412989"]
  most_recent      = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.10.20260202.2-kernel-6.1-x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "ami_id" {
  value       = data.aws_ami.joindevops.id
}