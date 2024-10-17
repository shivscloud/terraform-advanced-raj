In this session we are focusing on meta argumements
like
DependsOn
Count

# Meta Arguments count and depends-on
resource "aws_eip" "my-eip" {
  instance = aws_instance.my-ec2-vm.id
  vpc      = true
  # Meta-Argument -------> Depends-On
  depends_on = [aws_internet_gateway.vpc-dev-igw]
}
