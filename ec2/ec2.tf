resource "aws_instance" "example" {
  ami           = "ami-0c1fe732b5494dc14"
  instance_type = "t2.micro"
  subnet_id     = "subnet-059c51047a06f132e"
  vpc_security_group_ids = [ aws_security_group.allow_all_new.id ]

  tags = {
    Name = "HelloWorld"
  }
}



resource "aws_security_group" "allow_all_new" {
    name        = "allow_all_new"
    description = "allow all traffic"

    ingress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
  }
    egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
  }
    tags = {
      Name = "allow_all_new"
  }
}