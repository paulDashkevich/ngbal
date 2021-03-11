output "external_ip_address" {
  value = ah_cloud_server.pcm.*.ips.0.ip_address
}

output "internal_ip" {
  value = ah_private_network_connection.private_lan.*.ip_address
}
