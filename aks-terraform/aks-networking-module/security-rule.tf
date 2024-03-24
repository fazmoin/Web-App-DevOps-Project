resource "azurerm_network_security_rule" "kube_apiserver_rule" {
  name                        = "kube-apiserver-rule"
  resource_group_name         = azurerm_resource_group.aks_rg.name
  network_security_group_name = azurerm_network_security_group.aks_nsg.name
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_address_prefixes     = ["${data.http.get_public_ip}/32"]
  destination_port_range      = "443"
}

resource "azurerm_network_security_rule" "ssh_rule" {
  name                        = "ssh-rule"
  resource_group_name         = azurerm_resource_group.aks_rg.name
  network_security_group_name = azurerm_network_security_group.aks_nsg.name
  priority                    = 110
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_address_prefixes     = ["${data.http.get_public_ip}/32"]
  destination_port_range      = "22"
}