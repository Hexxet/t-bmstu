variable "worker_servers" {
    description = "Number of worker nodes."
    type = number
    default = 1
}

variable "worker_image" {
    description = "URL/path to vagrant image used for worker nodes."
    type = string
}

variable "worker_cpus" {
    description = "Number of cpus for worker nodes."
    type = number
    default = 2
}

variable "worker_memory" {
    description = "RAM for worker nodes."
    type = number
    default = 1024
}