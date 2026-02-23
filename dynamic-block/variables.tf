variable "ami_id" {
  type        = string
  description = "AMI ID of joindevops RHEL9"
  default     = "ami-0c1fe732b5494dc14"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_tags" {
  type = map(string)
  default = {
    Name    = "Roboshop"
    purpose = "variables_demo"
  }
}

variable "sg_name" {
  default = "allow_all_new"
}

variable "sg_description" {
  default = "allow all ports from internet"
}

variable "from_port" {
  default = 0
}
variable "to_port" {
  type    = number
  default = 0
}
variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
variable "sg_tags" {
  default = {
    Name    = "allow_all_new"
    Purpose = "Demo Security Group"
  }
}
variable "instances" {
  default = {
    mongodb  = "t2.micro"
    reddis   = "t2.micro"
    mysql    = "t2.micro"
    rabbitmq = "t2.micro"
  }
}
variable "Zone_id" {
  default = "Z0654060A6YS3XW45CP5"
}
variable "domain_name" {
  default = "amaraws.store"
}

variable "ingress_ports" {
  default = [ # list(maps)
    {
      from_port = 22
      to_port   = 22
    },

    {
      from_port = 80
      to_port   = 80
    },
    {
      from_port = 8080
      to_port   = 8080
    }
  ]
}