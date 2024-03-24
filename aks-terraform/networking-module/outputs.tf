output "current_public_ip" {
  value = jsondecode(data.http.get_public_ip.body)["ip"]
}