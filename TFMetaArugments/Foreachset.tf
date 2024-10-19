# Create 4 IAM Users
resource "aws_iam_user" "myuser" {
  for_each = toset( ["Jack", "James", "Madhu", "Dave","Rajesh"] )
  name     = each.key
}