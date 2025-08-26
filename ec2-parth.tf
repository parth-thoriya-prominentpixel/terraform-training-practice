
resource "aws_instance" "tf-parth-ec2" {
  ami           ="ami-00ca32bbc84273381"
  instance_type = "t3.micro"
  subnet_id = "subnet-047f5f2df9da854d3"
  
  tags = {
    Name = "tf-parth-ec2"
  }
}
