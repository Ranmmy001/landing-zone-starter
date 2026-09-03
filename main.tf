terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      
        }
    }
}
provider "aws" {
  region = "us-east-1"  
  
}


resource "aws_instance" "practise_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"
  

  tags = {
    Name = "practise_instance"
  }
}

