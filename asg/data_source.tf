data "template_file" "webserver" {
  template = file("user_data.sh")
  vars = {
    env = var.env
  }
}

# data "aws_route53_zone" "my_zone" {
#   name = var.zone_name
# }