provider "aws" {
    region = "us-east-2"
}
resource "aws_instance" "my_ec2_instance" {
   ami = "ami-07c1207a9d40bc3bd"
 
   instance_type = "t2.micro"
   user_data = <<-EOF
		#!/bin/bash
        sudo apt-get update
		sudo apt-get install -y apache2
		sudo systemctl start apache2
		sudo systemctl enable apache2
		sudo echo "<h1>Hello devopssec</h1>" > /var/www/html/index.html
	EOF
   tags = {
     Name = "terraform test"
 }
}
