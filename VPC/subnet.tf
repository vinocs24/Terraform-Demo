resource "aws_subnet" "demo-vpc-subnet1" {
    vpc_id     = aws_vpc.demo-vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"

    tags = {
        Name = "demo-vpc-subnet"
    }
}

resource "aws_subnet" "demo-vpc-subnet2" {
    vpc_id     = aws_vpc.demo-vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1b"

    tags = {
        Name = "demo-vpc-subnet"
    }
}

resource "aws_subnet" "demo-vpc-subnet3" {
    vpc_id     = aws_vpc.demo-vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-1c"

    tags = {
        Name = "demo-vpc-subnet"
    }
}
