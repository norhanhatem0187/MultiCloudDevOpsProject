provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

module "vpc" {
  source     = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
  vpc_name   = "my-vpc"
}

module "subnet" {
  source            = "./modules/subnet"
  vpc_id            = module.vpc.vpc_id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"  # Change to your desired AZ
  subnet_name       = "my-subnet"
}

module "security_group" {
  source                = "./modules/security-group"
  vpc_id                = module.vpc.vpc_id
  sg_name               = "my-sg"
  sg_description        = "Allow SSH and HTTP"
  ingress_from_port     = 22
  ingress_to_port       = 22
  ingress_protocol      = "tcp"
  ingress_cidr_blocks   = ["0.0.0.0/0"]
}

module "ec2" {
  source          = "./modules/ec2"
  ami             = "ami-04b70fa74e45c3917"  # Change to your desired AMI
  instance_type   = "t2.micro"
  subnet_id       = module.subnet.subnet_id
  security_group_id = module.security_group.sg_id
  instance_name   = "my-instance"
}


module "cloudwatch"  {
source= "./modules/cloudwatch"
alert_email = "norhan.hatem0187@gmail.com"
instance_name = module.ec2.instance_id  

}


resource "aws_dynamodb_table" "terraform_lock" {
  name         = "ivolve_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

