resource "virtualbox_vm" "worker-node" {
    count     = var.worker_servers
    image     = var.worker_image
    name      = "worker-node-${count.index}"
    cpus      = var.worker_cpus
    memory    = "${var.worker_memory}mib"

    network_adapter {
        type = "bridged"
        host_interface = "wlp8s0"
    }
}