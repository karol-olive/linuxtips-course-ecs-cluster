#### GENERAL ####

variable "project_name" {}

variable "region" {}

#### SSM VPC ####

variable "ssm_vpc_id" {}

variable "ssm_public_subnet_1a" {}

variable "ssm_public_subnet_1b" {}

variable "ssm_public_subnet_1c" {}

variable "ssm_private_subnet_1a" {}

variable "ssm_private_subnet_1b" {}

variable "ssm_private_subnet_1c" {}

#### LOAD BALANCER ####

variable "load_balancer_internal" {}

variable "load_balancer_type" {}

#### ECS GENERAL ####

variable "nodes_ami" {}

variable "nodes_instance_type" {}

variable "nodes_volume_size" {}

variable "nodes_volume_type" {}

variable "cluster_on_demand_min_size" {}

variable "cluster_on_demand_max_size" {}

variable "cluster_on_demand_desired_size" {}


variable "cluster_spots_min_size" {}

variable "cluster_spots_max_size" {}

variable "cluster_spots_desired_size" {}
