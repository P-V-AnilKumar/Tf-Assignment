resource "aws_instance" "web" {
  ami           = "ami-094125af156557ca2"
  instance_type = "t2.micro"
  key_name = "assignment"
  subnet_id = aws_subnet.public[count.index].id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  associate_public_ip_address = true
  count = 2

  tags = {
    Name = "WebServer"
  }

  provisioner "file" {
    source = "./assignment.pem"
    destination = "/home/ec2-user/assignment.pem"
  
    connection {
      type = "ssh"
      host = self.public_ip
      user = "ec2-user"
      private_key = "${file("./assignment.pem")}"
    }  
  }
}

resource "aws_instance" "db" {
  ami           = "ami-094125af156557ca2"
  instance_type = "t2.micro"
  key_name = "assignment"
  subnet_id = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.allow_tls_db.id]

  tags = {
    Name = "DB Server"
  }
}