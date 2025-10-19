provider "aws" {
    region = "us-east-1"

}

#Crear VPC
resource "aws_vpc" "vpc_ej2" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = { Name = "vpc_ej2" }
}
#Crear Subred
resource "aws_subnet" "subnetA" {
  vpc_id     = aws_vpc.vpc_ej2.id
  cidr_block = "10.0.32.0/25"

  tags = {
    Name = "subredA"
  }
}

resource "aws_subnet" "subnetB" {
  vpc_id     = aws_vpc.vpc_ej2.id
  cidr_block = "10.0.30.0/23"

  tags = {
    Name = "subredB"
  }
}

resource "aws_subnet" "subnetC" {
  vpc_id     = aws_vpc.vpc_ej2.id
  cidr_block = "10.0.33.0/28"

  tags = {
    Name = "subredC"
  }
}



#Crear instancia de EC2
resource "aws_instance" "A1maquina" {
    instance_type = "t3.micro"
    ami = "ami-052064a798f08f0d3"
    subnet_id = aws_subnet.subnetA.id

    tags = {
      Name = "A1maquina"
    }

}

resource "aws_instance" "A2Maquina" {
    instance_type = "t3.micro"
    ami = "ami-052064a798f08f0d3"
    subnet_id = aws_subnet.subnetA.id

    tags = {
      Name = "A2Maquina"
    }

}

resource "aws_instance" "B1Maquina" {
    instance_type = "t3.micro"
    ami = "ami-052064a798f08f0d3"
    subnet_id = aws_subnet.subnetB.id

    tags = {
      Name = "B1Maquina"
    }

}

resource "aws_instance" "B2Maquina" {
    instance_type = "t3.micro"
    ami = "ami-052064a798f08f0d3"
    subnet_id = aws_subnet.subnetB.id

    tags = {
      Name = "B2Maquina"
    }

}

resource "aws_instance" "C1Maquina" {
    instance_type = "t3.micro"
    ami = "ami-052064a798f08f0d3"
    subnet_id = aws_subnet.subnetC.id

    tags = {
      Name = "C1Maquina"
    }

}

resource "aws_instance" "C2Maquina" {
    instance_type = "t3.micro"
    ami = "ami-052064a798f08f0d3"
    subnet_id = aws_subnet.subnetC.id

    tags = {
      Name = "C2Maquina"
    }

}