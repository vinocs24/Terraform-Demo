resource "aws_launch_configuration" "ecs-launch-configuration" {
    name                        = var.launch-configuration-name
    image_id                    = var.image-id
    instance_type               = var.instance-type
    security_groups             = [var.security-group-id, var.rds-security-group]
    associate_public_ip_address = true
    key_name                    = var.key_name
    user_data                   = file("installing-components.sh")
    
    tags = {
      Name = "ec2-instance"
    }
}
