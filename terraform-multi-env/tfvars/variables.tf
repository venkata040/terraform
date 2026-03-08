variable "project" {
  default = "roboshop"  
}

variable "environment" {
    
}


variable "common_tags"{
    default = {
        Project = "roboshop"
        Terraform = "true"
    }
}
variable "sg_name"{
    default = "allow_all_new"
}
variable "sg_description"{
    default = "allowing all ports from all IPs"
}
variable "instances"{
   default = ["mongodb", "redis"]
}