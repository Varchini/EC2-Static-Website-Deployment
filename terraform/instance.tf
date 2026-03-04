resource "aws_instance" "web01" {

  ami                    = var.amiID[var.region]
  instance_type          = "t3.micro"
  key_name               = "web01login"
  vpc_security_group_ids = [aws_security_group.web01-sg.id]
  availability_zone      = var.zone


  tags = {
    Name    = "webserver01"
    Project = "Dev"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("login")
      host        = self.public_ip
    }
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("login")
      host        = self.public_ip
    }
  }
  provisioner "local-exec" {
    command = "echo ${aws_instance.web01.public_ip} >> public_ip.txt"

  }
}



resource "aws_ec2_instance_state" "vmstatus" {
  instance_id = aws_instance.web01.id
  state       = "stopped"
}

output "private_IP" {
  description = "private IP address of the web01 server"
  value       = aws_instance.web01.private_ip
}

