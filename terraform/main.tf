module "master-nodes" {
  source = "./modules/master-nodes"
  master_image = "./bento-ubuntu22"
  master_servers = 1
  master_memory = 2024
}

module "worker-nodes" {
  source = "./modules/worker-nodes"
  worker_image = "./bento-ubuntu22"
  worker_servers = 2
  worker_memory = 2024
}
