variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    type = string
  
}

# variable "instance_type" {
#     default = "t3.micro"
#     type = string
  
# }

variable "aws_sg_name" {
    default = "allow_ssh_terraform"
    type = string
  
}

variable "from_port" {
    default = "22"
    type = string
  
}
variable "to_port" {
    default = "22"
    type = string
  
}
variable "protocol" {
    default = "tcp"
    type = string
  
}

variable "common-tags" {
    default = {
        Name="Terraform"
        terraform="true"
    }
  
}
 
variable "Environment" {
    type = string
  
}

variable "instance_names" {
    type = map(string)
}

variable "zone_id" {
    default = "Z03878703OYPMEXJLGWC0"
  
}

variable "domain_name" {
    default = "manohar.fun"
  
}

variable "tags"{
    type=map(string)
}

