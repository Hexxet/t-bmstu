output "worker_ip_addresses" {
    value = virtualbox_vm.worker-node[*].network_adapter[0].ipv4_address
}