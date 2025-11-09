variable "instances" {
    default = ["mongodb", "redis"]
#     # default = {
#     #   mongodb = "t3.micro"
#     #   redis = "t3.micro"
#     #   mysql = "t3.small"
#     }
 }   

variable "zone_id" {
  default = "Z03169951FA45W056VOMX"
}

variable "domain_name" {
  default = "nfza.fun"
}