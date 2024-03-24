data "http" "get_public_ip" {
  url = "https://api.ipify.org?format=json"
}