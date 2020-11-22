output "vpc_id" {
    value = data.aws_vpc.default.id
}

output "subnet_ids" {
    value = data.aws_subnet_ids.default.ids
}

output "alb_dns_name" {
    description = "The domain name of the load balancer"
    value = aws_lb.example.dns_name
}

output "rendered_data" {
    value = data.template_file.user_data.rendered
}

output "asg_name" {
    value = aws_autoscaling_group.example.name
    description = "The name of the autoscaling group"
}

output "alb_security_group_id" {
    value = aws_security_group.alb.id
    description = "The ID of the Security Group attached to the load balancer"
}