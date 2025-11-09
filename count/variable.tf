variable "instances" {
    default = ["mongodb", "redis", "mysql","rabbitmq","catalogue","user", "cart", "shipping", "payment", "frontend"]
}   

variable "zone_id" {
  default = "Z03169951FA45W056VOMX"
}

variable "domain_name" {
  default = "nfza.fun"
}