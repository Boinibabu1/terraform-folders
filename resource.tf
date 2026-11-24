resource "aws_instance" "myinstance" {
tags = {
name = "terraform1"
}

ami = "ami-0aacbf72109c53c0c"
instance_type = "t3.micro"
vpc_security_group_ids = [aws_security_group.newsg.id]

provisioner "local-exec" {
  command = "echo 'instance created with ID : ${aws_instance.myinstance.id}' >> instance.txt"
}
}
