variable "region" { 
    description = "Region for VPC Subnet"
    type = string
}

variable "vpc" { 
    description = "Name of the VPC"
    type = string
}

variable "subnet_cidr" { 
    description = "Range of VPC subnet"
    type = string
}