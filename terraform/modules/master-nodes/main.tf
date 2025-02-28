resource "virtualbox_vm" "master-node" {
    count     = var.master_servers
    image     = var.master_image
    name      = "master-node-${count.index}"
    cpus      = var.master_cpus
    memory    = "${var.master_memory}mib"

    network_adapter {
        type = "bridged"
        host_interface = "wlp8s0"
    }
}