resource "aws_instance" "sa_machina" {
  ami                    = "ami-0c11a84584d4e09dd"
  instance_type          = "t2.micro"
  key_name               = "ubuntu-aws" #adc o nome da chave!
  vpc_security_group_ids = [aws_security_group.cli-users.id]
  user_data              = file("script.sh")

  tags = {
    Name = "sa_machina"
  }
}