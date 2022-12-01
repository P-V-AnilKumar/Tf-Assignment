# Tf-Assignment
The following is used to deploy a 3-tier architecture on aws using terraform.
The different resources that are created are:

Custom VPC
Subnets (2 public and 1 private)
3 EC2 instances
Elastic IP
Security group
NAT Gateway
Internet Gateway
Route Table
Application Load Balancer
Apache Webserver

In this regard, I have created different .tf files for each.
First and foremost, enter the credentials in provider.tf in the section of "access_key" and "secret_key"..
Upon downloading all the files for verification, start with "terraform init" command in terminal or cmd.

Note: For ec2 with public subnet: After successful deployment, I was only able to connect only one public subnet ec2(us-west-2b) to the internet but the other public subnet ec2(us-west-2a) couldn't be connected. 
The private subnet ec2 can only be connected to internet via NAT gateway which is installed on the same ec2(us-west-2a) that is not connecting to internet.
Tried looking for error in the code, but couldn't find one and finally not able to resolve for us-west-2a region.
Rest all is working good
