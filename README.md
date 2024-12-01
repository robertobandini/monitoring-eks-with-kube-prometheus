# monitoring-eks-with-kube-prometheus

This Terraform project example allows you to create an EKS with its VPC, its VPN to access it privately, Karpenter and kube-prometheus to monitor the Kubernetes cluster with Linux and Windows workloads.

It is ideal to have your own private EKS ready to access via VPN with Karpenter deployed for node autoscaling and kube-prometheus to monitor the cluster, from the nodes to the pods with their containers whether they are Linux or Windows.

You can find any information on this post: https://www.robertobandini.it/2024/11/30/the-most-streamlined-way-to-monitor-your-kubernetes-cluster-with-linux-and-windows-nodes