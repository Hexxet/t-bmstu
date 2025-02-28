variable "master_servers" {
    description = "Number of master nodes."
    type = number
    default = 3
}

variable "master_image" {
    description = "URL/path to vagrant image used for master nodes."
    type = string
}

variable "master_cpus" {
    description = "Number of cpus for master nodes."
    type = number
    default = 2
}

variable "master_memory" {
    description = "RAM master nodes."
    type = number
    default = 2048
}