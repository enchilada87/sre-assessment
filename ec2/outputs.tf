#ssh key pair outputs
output "key_pair_name" {
    description = "name of ssh key pair"
    value = aws_key_pair.key.key_name
}

#security group outputs
output "sg_id" {
    description = "The ID of the security group"
    value = aws_security_group.ec2.id
}

#ec2 outputs
output "ec2_id" {
    description = "id of ec2 created" 
    value = aws_instance.instance.id
}

output "ec2_arn" {
    description = "arn of ec2 created" 
    value = aws_instance.instance.arn
}

output ec2_public_ip {
    description = "public ip of ec2 created"
    value = aws_instance.instance.public_ip
}

