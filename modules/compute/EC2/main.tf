resource "aws_instance" "ec2" {
  ami                         = var.instance_ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address

  tags = {
    Name        = "terraform-ec2"
    Environment = var.environment
  }
}