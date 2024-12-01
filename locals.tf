locals {
  name   = "test-kube-prometheus"
  region = "us-east-1"

  vpc_cidr = "10.0.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)

  karpenter_enabled         = true
  gp3_storage_class_enabled = true
  kube_prometheus_enabled   = true
  
  ec2_client_vpn_enabled  = true
  vpn_allowed_cidr_blocks = ["xxx.xxx.xxx.xxx/32"]

  tags = {
    Test = local.name
  }
}