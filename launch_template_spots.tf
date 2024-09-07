resource "aws_launch_template" "spots" {
  name_prefix   = format("%s-spots", var.project_name)
  image_id      = var.nodes_ami
  instance_type = var.nodes_instance_type

  vpc_security_group_ids = [
    aws_security_group.sg_vpc_main.id
  ]

  instance_market_options {
    market_type = "spot"
    spot_options {
      max_price = "0.15"
    }
  }

  iam_instance_profile {
    name = "ecsInstanceRole"
  }

  update_default_version = true

  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      volume_size = var.nodes_volume_size
      volume_type = var.nodes_volume_type
    }
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = format("%s-spots", var.project_name)
    }
  }

  user_data = base64encode(templatefile("${path.module}/templates/user-data.tpl", {
    CLUSTER_NAME = format("%s-cluster", var.project_name)
  }))
}
