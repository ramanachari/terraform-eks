resource "aws_eip" "nat-epi" {
  domain = "vpc"

  tags = {
    Name = "${local.env}-nat-eip"
  }
}


resource "aws_nat_gateway" "nat-ngw" {
  allocation_id = aws_eip.nat-epi.id
  subnet_id     = aws_subnet.public_zone1.id

  tags = {
    Name = "${local.env}-nat-ngw"
  }
  depends_on = [aws_internet_gateway.igw]
}
