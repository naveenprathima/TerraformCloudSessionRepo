variable "tags" {
  type = map(any)
  default = {
    Team = "security-team"
  }
}
locals {
  default = {
    Team         = "security-teams"
    CreationDate = "dat-${formatdate("DDMMYYYY", timestamp())}"
  }
}
resource "aws_security_group" "sg_01" {
  name = "app_firewall"
  tags = local.default
}
resource "aws_security_group" "sg-02" {
  name = "db_firewall"
  tags = local.default
}