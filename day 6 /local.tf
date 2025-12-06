    ##Local Variables

#local values for resource naming
 
locals {
    bucket_name = "my-unique-${var.Environment}-bucket-123456"
    vpc_name    = "${var.Environment}-VPC"
    instance_name = "${var.Environment}-Instance"
  
}

