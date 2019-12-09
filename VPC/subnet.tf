resource "aws_subnet" "demo-vpc-subnet1" {
    vpc_id     = aws_vpc.demo-vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-west-2"

    tags = {
        Name = "demo-vpc-subnet"
    }
}

resource "aws_subnet" "demo-vpc-subnet2" {
    vpc_id     = aws_vpc.demo-vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-west-2a"

    tags = {
        Name = "demo-vpc-subnet"
    }
}

resource "aws_subnet" "demo-vpc-subnet3" {
    vpc_id     = aws_vpc.demo-vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-west-2b"

    tags = {
        Name = "demo-vpc-subnet"
    }
}
