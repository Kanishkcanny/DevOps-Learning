terraform {
   required_version = ">= 1.15.7"  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.53.0"
    }
  }
}


provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "app_server" {
    ami      = "ami-0b6d9d3d33ba97d99" #amazon ubuntu 26.04 
instance_type = "t3.micro"
   
   tags = {
    name = " terraform_demo"
   }
}