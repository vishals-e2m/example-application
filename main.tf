resource "aws_vpc" "existing" {
  # Placeholder for resource arguments
}

# Use aws_subnets instead of aws_subnet_ids
data "aws_subnets" "existing" {
  filter {
    name   = "vpc-id"
    values = [aws_vpc.existing.id]
  }
}

# Get the first subnet from the list
data "aws_subnet" "selected" {
  id = tolist(data.aws_subnets.existing.ids)[0]
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.selected.id

  tags = {
    Name = "ScalrTestInstance"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
