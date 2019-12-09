//----------------------------------------------------------------------
// Shared Variables
//----------------------------------------------------------------------

Variable "vpc-id" {}
Variable "subnet-id-1" {}
Variable "subnet-id-2" {}
variable "security-group-id" {}
variable "rds-security-group" {}
variable "key_name" {}



//----------------------------------------------------------------------
// Launch Configuration Variables
//----------------------------------------------------------------------


variable "image-id" {
    description = "The name for the autoscaling group for the cluster."
    default = "ami-08d489468314a58df"
}

variable "instance-type" {
    description = "The name for the autoscaling group for the cluster."
    default = "t2.micro"
}
