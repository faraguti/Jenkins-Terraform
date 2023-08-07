resource "aws_instance" "ec2-instance-1" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = "t2.micro"

  tags = {
    Name = "TF-Jenkins-Instance"
  }
}