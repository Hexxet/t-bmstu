output "master_ip_addresses" {
    value = virtualbox_vm.master-node[*].network_adapter[0].ipv4_address
}