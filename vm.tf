resource "ah_cloud_server" "pcm" {
  backups    = false
  count      = 4
  name       = "node_${count.index}"
  datacenter = var.ah_dc
  image      = var.ah_image_type
  product    = var.ah_machine_type
  ssh_keys   = [var.ah_fp]
}

resource "ah_private_network" "private_lan" {
  ip_range = "10.1.0.0/24"
  name     = "privat_lan"
}

resource "ah_private_network_connection" "private_lan" {
  count = 4
  cloud_server_id    = ah_cloud_server.pcm[count.index].id
  private_network_id = ah_private_network.private_lan.id
  ip_address         = "10.1.0.1${count.index}"
}