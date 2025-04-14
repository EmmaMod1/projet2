provider "aws" {
    region = "us-east-2"
}
resource "aws_instance" "my_ec2_instance" {
   ami = "ami-07c1207a9d40bc3bd"
 
   instance_type = "t2.micro"
   tags = {
     Name = "terraform test"
 }
}
