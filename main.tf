provider "aws" {
  region = "us-east-1" # Specify your AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with the AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "Example-EC2"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
