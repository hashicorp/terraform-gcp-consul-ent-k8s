provider "google" {
  project = var.project_id
  region  = var.region
}

module "gcp-vpc" {
  source     = "./gcp-vpc/"
  project_id = var.project_id
  region     = var.region
}

module "gke-cluster-1" {
  source                 = "./k8s-cluster/"
  cluster_name           = var.gke_1_cluster_name
  master_ipv4_cidr_block = var.primary_master_ipv4_cidr_block
  network                = module.gcp-vpc.network_name
  project_id             = var.project_id
  region                 = var.region
  subnetwork             = module.gcp-vpc.subnetworks[0]
}

module "gke-cluster-2" {
  source                 = "./k8s-cluster/"
  cluster_name           = var.gke_2_cluster_name
  master_ipv4_cidr_block = var.secondary_master_ipv4_cidr_block
  network                = module.gcp-vpc.network_name
  project_id             = var.project_id
  region                 = var.region
  subnetwork             = module.gcp-vpc.subnetworks[1]
}

module "secret-manager" {
  source = "./secrets"
}
