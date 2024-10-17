# Create EC2 Instance
resource "aws_instance" "count_operation" {
  ami           = "ami-06b21ccaeff8cd686" # Amazon Linux
  instance_type = "t2.micro"
  count         = 2
  tags = {
    # Meta-Argument -------> Count
    "Name" = "count-${count.index + 1}"
  }
}