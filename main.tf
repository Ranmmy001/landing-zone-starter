terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "practise_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # tfsec:ignore:aws-ec2-no-public-ip
  instance_type = "t3.micro"

  tags = {
    Name = "practise_instance"
  }
}



# ics_v1_ByrhqevEMiEV9AAftK3Soa_s8XgLZ4g1tceOO4NQ7y34jZyc9Hb965qAUIvfzkmhshDEuDSp