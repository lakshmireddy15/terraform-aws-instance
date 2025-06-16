variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "ami id of the ec2 instance"
  
}
variable "instance_type" {
    default = "t3.small"
    type = string
    description = "instance size"

    validation {
      condition = contains(["t3.micro","t3.small","t3.medium"],var.instance_type)
      error_message = "vaild values are : instance_type (t3.micro,t3.small,t3.medium)"
    }
  
}
# every project needs to supply their secuiry gruop beacuse every project conatin different security
# this is mandotory 
variable "sg_ids" {
    type = list

  
}

variable "tags" {
    type = map
  
}