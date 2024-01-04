resource "aws_route_table" "rtb" {
    vpc_id = aws_vpc.main.id 

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws.aws_internet_gateway.gw.id
    }

        tags = {
            Name = "MyRoute"
    }
}