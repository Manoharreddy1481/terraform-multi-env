resource "aws_security_group" "allow_ssh_terraform" {
    name="${var.aws_sg_name}_${var.Environment}"
    description = "created this sg from terraform script"

    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    ingress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = var.protocol
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]

    }
    tags = merge(var.common-tags,
    var.tags,
    {
      Name="Allow_sshh_${var.Environment}"
    }
    )
}
resource "aws_instance" "terraform" {
    for_each=var.instance_names
    ami = var.ami_id
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

    tags = merge(var.common-tags,
    var.tags,
    {
      Name=each.key
    }
    )
  
}