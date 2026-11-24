output "instance" {
value = [aws_instance.myinstance.id, aws_instance.myinstance.public_ip, aws_instance.myinstance.private_ip]
}

