resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]

    tags = {
      Name = "Terraform"
      Terraform = "True"
    }
}

resource "aws_security_group" "allow_all" {
  name   = "allow-all"
  
  egress {
    from_port        = 0 # 0 from port 0 to 0 port means all ports
    to_port          = 0
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] #internet
}

  ingress {
    from_port        = 0 # 0 from port 0 to 0 port means all ports
    to_port          = 0
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] #internet
}

tags = {
  Name = "allow=all"
}

}