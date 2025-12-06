resource "aws_s3_bucket" "test_bucket" {
  bucket = local.bucket_name

  tags = {
    Name        = "${var.env_name}-Bucket"
    Environment = var.Environment
  }
  
}

resource "aws_vpc" "test_vpc" {
    cidr_block = "10.0.0.0/16"
        

    tags = {
        Name = "${var.env_name}-VPC"
        Environment = var.Environment
    }
  
}

resource "aws_instance" "test" {
  count = var.instance_count
    ami  = var.ami_id # Example AMI ID, replace with a valid one for your region
    instance_type = var.allowed_vm_types[0]
    monitoring = var.monitoring_enabled
    
    region = tolist(var.allowed_regions[0])

    tags = {
        Name = "${var.env_name}-Instance"
        Environment = var.Environment
    }
  
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  vpc_id = aws_vpc.test_vpc.id  

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         =  "10.0.0.0/16 "
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "10.0.1.0/16"
  from_port         = 0 
  to_port           = 0
  ip_protocol       = "-1" # semantically equivalent to all ports
}
