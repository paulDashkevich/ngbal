resource "local_file" "AnsibleInventory" {
  content = templatefile("ansible/inventory.tpl",
    {
      ip     = ah_cloud_server.pcm.*.ips.0.ip_address,
      int_ip = ah_private_network_connection.private_lan.*.ip_address
    }
  )
  filename = "hosts"
}