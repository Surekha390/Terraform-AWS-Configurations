variable "tags" {
    type = map
    default = {
        Team = "security-team"
    }
    

}

locals {
  default = {
     Team = "security-team"
     CreationDate = "date-${formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())}"
    
  }
}

resource "aws_security_group" "sg_01" {
  name        = "app_firewall"
  tags = local.default
  #tags = var.tags
}

resource "aws_security_group" "sg_02" {
  name        = "db_firewall"
  tags = local.default
  #tags = var.tags
}