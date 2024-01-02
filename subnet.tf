resource "aws_subnet" "public" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.cidr[count.index]
    availability_zone = var.az[count.index]

    tags = {
        Name = "public-sub"
    }
}