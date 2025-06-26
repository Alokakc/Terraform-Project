variable "region" { 
    description = "Region for VPC Subnet"
    type = string
}

variable "vpc_self_link" { 
    description = "Name of the VPC"
    type = any
}

variable "router" { 
    description = "Name of the router"
    type = string
}

variable "nat" { 
    description = "Name of the cloud nat"
    type = string
}
