variable "my-map" {
    type = map
    default = {
        name = "Alice"
        Team = "payments"
    }
}


output "variable-value" {
    value = var.my-map
}