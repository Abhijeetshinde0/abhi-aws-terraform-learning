resource "aws_instance" "example" {
  ami           = ami-01a00762f46d584a1
  instance_type = "t3.mictro"
  subnet_id = subnet-0f09071261d475b64
  # count = var.instance_count
  associate_public_ip_address = var.associate_public_ip_address

  tags = {
    Name = "${var.environment}-web-server"
    Environment = var.environment

}

}


