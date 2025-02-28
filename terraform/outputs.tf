output "all_ip_addresses" {
  value = {
    master = module.master-nodes.master_ip_addresses
    worker = module.worker-nodes.worker_ip_addresses
  }
}
