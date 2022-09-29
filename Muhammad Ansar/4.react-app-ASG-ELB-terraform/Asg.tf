# resource "aws_autoscaling_group" "web" {
#   name = "${aws_launch_configuration.web.name}-asg"

#   min_size             = 2
#   desired_capacity     = 2
#   max_size             = 10
  
#   health_check_type    = "ELB"
#   load_balancers = [
#     "${aws_elb.web_elb.id}"
#   ]

#   launch_configuration = "${aws_launch_configuration.web.name}"

#   enabled_metrics = [
#     "GroupMinSize",
#     "GroupMaxSize",
#     "GroupDesiredCapacity",
#     "GroupInServiceInstances",
#     "GroupTotalInstances"
#   ]

#   metrics_granularity = "1Minute"

#   vpc_zone_identifier  = [
#     "${aws_subnet.dev-vpc-public-subnet-1.id}",
#     "${aws_subnet.dev-vpc-public-subnet-2.id}"
#   ]

  # Required to redeploy without an outage.
#   lifecycle {
#     create_before_destroy = true
#   }

#   tag {
#     key                 = "Name"
#     value               = "web"
#     propagate_at_launch = true
#   }

# }
# resource "aws_launch_template" "foobar" {
#   name = "${aws_launch_configuration.web.name}-asg"
#   image_id      = "ami-1a2b3c"
#   instance_type = "t2.micro"
# }

resource "aws_autoscaling_group" "bar" {
  #availability_zones = ["us-east-1a"]
  desired_capacity   = 2
  max_size           = 10
  min_size           = 2

  launch_template {
    id      = aws_launch_template.web.id
    version = "$Latest"
  }
  health_check_type    = "ELB"
  load_balancers = [
    "${aws_elb.web_elb.id}"
  ]

  vpc_zone_identifier  = [
    "${aws_subnet.dev-vpc-public-subnet-1.id}",
    "${aws_subnet.dev-vpc-public-subnet-2.id}"
  ]

  tag {
    key                 = "Name"
    value               = "web"
    propagate_at_launch = true
  }
}
