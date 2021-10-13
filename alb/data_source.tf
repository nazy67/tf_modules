data "aws_route53_zone" "my_zone" {
  name = var.zone_name
}