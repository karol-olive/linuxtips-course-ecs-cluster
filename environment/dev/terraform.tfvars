#### GENERAL ####

project_name = "linuxtips-ecs"
region       = "eu-west-1"

#### SSM VPC  ####

ssm_vpc_id            = "/linuxtips-vpc/vpc/vpc_id"
ssm_public_subnet_1a  = "/linuxtips-vpc/vpc/subnet_public_1a"
ssm_public_subnet_1b  = "/linuxtips-vpc/vpc/subnet_public_1b"
ssm_public_subnet_1c  = "/linuxtips-vpc/vpc/subnet_public_1c"
ssm_private_subnet_1a = "/linuxtips-vpc/vpc/subnet_private_1a"
ssm_private_subnet_1b = "/linuxtips-vpc/vpc/subnet_private_1b"
ssm_private_subnet_1c = "/linuxtips-vpc/vpc/subnet_private_1c"

#### LOAD BALANCER ####

load_balancer_internal = false
load_balancer_type     = "application"
