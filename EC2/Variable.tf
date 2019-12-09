//----------------------------------------------------------------------
// Shared Variables
//----------------------------------------------------------------------

variable "vpc-id" {}
variable "subnet-id-1" {}
variable "subnet-id-2" {}
variable "security-group-id" {}
variable "rds-security-group" {}
variable "key_name" {}



//----------------------------------------------------------------------
// Launch Configuration Variables
//----------------------------------------------------------------------

variable "launch-configuration-name" {
    description = "The name for the autoscaling group for the cluster."
    default = "demo-ecs-launch-configuration"
}

variable "image-id" {
    description = "The name for the autoscaling group for the cluster."
    default = "ami-d61027ad"
}

variable "instance-type" {
    description = "The name for the autoscaling group for the cluster."
    default = "t2.micro"
}
