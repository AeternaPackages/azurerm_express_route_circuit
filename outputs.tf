# --- azurerm_express_route_circuit ---
output "express_route_circuits_allow_classic_operations" {
  description = "Map of allow_classic_operations values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_allow_classic_operations
}

output "express_route_circuits_authorization_key" {
  description = "Map of authorization_key values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_authorization_key
  sensitive   = true
}

output "express_route_circuits_bandwidth_in_gbps" {
  description = "Map of bandwidth_in_gbps values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_bandwidth_in_gbps
}

output "express_route_circuits_bandwidth_in_mbps" {
  description = "Map of bandwidth_in_mbps values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_bandwidth_in_mbps
}

output "express_route_circuits_express_route_port_id" {
  description = "Map of express_route_port_id values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_express_route_port_id
}

output "express_route_circuits_location" {
  description = "Map of location values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_location
}

output "express_route_circuits_name" {
  description = "Map of name values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_name
}

output "express_route_circuits_peering_location" {
  description = "Map of peering_location values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_peering_location
}

output "express_route_circuits_rate_limiting_enabled" {
  description = "Map of rate_limiting_enabled values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_rate_limiting_enabled
}

output "express_route_circuits_resource_group_name" {
  description = "Map of resource_group_name values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_resource_group_name
}

output "express_route_circuits_service_key" {
  description = "Map of service_key values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_service_key
  sensitive   = true
}

output "express_route_circuits_service_provider_name" {
  description = "Map of service_provider_name values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_service_provider_name
}

output "express_route_circuits_service_provider_provisioning_state" {
  description = "Map of service_provider_provisioning_state values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_service_provider_provisioning_state
}

output "express_route_circuits_sku" {
  description = "Map of sku values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_sku
}

output "express_route_circuits_tags" {
  description = "Map of tags values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = module.express_route_circuits.express_route_circuits_tags
}

# --- azurerm_express_route_circuit_authorization ---
output "express_route_circuit_authorizations_authorization_key" {
  description = "Map of authorization_key values across all express_route_circuit_authorizations, keyed the same as var.express_route_circuit_authorizations"
  value       = module.express_route_circuit_authorizations.express_route_circuit_authorizations_authorization_key
  sensitive   = true
}

output "express_route_circuit_authorizations_authorization_use_status" {
  description = "Map of authorization_use_status values across all express_route_circuit_authorizations, keyed the same as var.express_route_circuit_authorizations"
  value       = module.express_route_circuit_authorizations.express_route_circuit_authorizations_authorization_use_status
}

output "express_route_circuit_authorizations_express_route_circuit_name" {
  description = "Map of express_route_circuit_name values across all express_route_circuit_authorizations, keyed the same as var.express_route_circuit_authorizations"
  value       = module.express_route_circuit_authorizations.express_route_circuit_authorizations_express_route_circuit_name
}

output "express_route_circuit_authorizations_name" {
  description = "Map of name values across all express_route_circuit_authorizations, keyed the same as var.express_route_circuit_authorizations"
  value       = module.express_route_circuit_authorizations.express_route_circuit_authorizations_name
}

output "express_route_circuit_authorizations_resource_group_name" {
  description = "Map of resource_group_name values across all express_route_circuit_authorizations, keyed the same as var.express_route_circuit_authorizations"
  value       = module.express_route_circuit_authorizations.express_route_circuit_authorizations_resource_group_name
}

# --- azurerm_express_route_circuit_peering ---
output "express_route_circuit_peerings_azure_asn" {
  description = "Map of azure_asn values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_azure_asn
}

output "express_route_circuit_peerings_express_route_circuit_name" {
  description = "Map of express_route_circuit_name values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_express_route_circuit_name
}

output "express_route_circuit_peerings_gateway_manager_etag" {
  description = "Map of gateway_manager_etag values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_gateway_manager_etag
}

output "express_route_circuit_peerings_ipv4_enabled" {
  description = "Map of ipv4_enabled values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_ipv4_enabled
}

output "express_route_circuit_peerings_ipv6" {
  description = "Map of ipv6 values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_ipv6
}

output "express_route_circuit_peerings_microsoft_peering_config" {
  description = "Map of microsoft_peering_config values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_microsoft_peering_config
}

output "express_route_circuit_peerings_peer_asn" {
  description = "Map of peer_asn values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_peer_asn
}

output "express_route_circuit_peerings_peering_type" {
  description = "Map of peering_type values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_peering_type
}

output "express_route_circuit_peerings_primary_azure_port" {
  description = "Map of primary_azure_port values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_primary_azure_port
}

output "express_route_circuit_peerings_primary_peer_address_prefix" {
  description = "Map of primary_peer_address_prefix values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_primary_peer_address_prefix
}

output "express_route_circuit_peerings_resource_group_name" {
  description = "Map of resource_group_name values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_resource_group_name
}

output "express_route_circuit_peerings_route_filter_id" {
  description = "Map of route_filter_id values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_route_filter_id
}

output "express_route_circuit_peerings_secondary_azure_port" {
  description = "Map of secondary_azure_port values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_secondary_azure_port
}

output "express_route_circuit_peerings_secondary_peer_address_prefix" {
  description = "Map of secondary_peer_address_prefix values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_secondary_peer_address_prefix
}

output "express_route_circuit_peerings_shared_key" {
  description = "Map of shared_key values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_shared_key
  sensitive   = true
}

output "express_route_circuit_peerings_vlan_id" {
  description = "Map of vlan_id values across all express_route_circuit_peerings, keyed the same as var.express_route_circuit_peerings"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings_vlan_id
}

# --- azurerm_express_route_connection ---
output "express_route_connections_authorization_key" {
  description = "Map of authorization_key values across all express_route_connections, keyed the same as var.express_route_connections"
  value       = module.express_route_connections.express_route_connections_authorization_key
}

output "express_route_connections_enable_internet_security" {
  description = "Map of enable_internet_security values across all express_route_connections, keyed the same as var.express_route_connections"
  value       = module.express_route_connections.express_route_connections_enable_internet_security
}

output "express_route_connections_express_route_circuit_peering_id" {
  description = "Map of express_route_circuit_peering_id values across all express_route_connections, keyed the same as var.express_route_connections"
  value       = module.express_route_connections.express_route_connections_express_route_circuit_peering_id
}

output "express_route_connections_express_route_gateway_bypass_enabled" {
  description = "Map of express_route_gateway_bypass_enabled values across all express_route_connections, keyed the same as var.express_route_connections"
  value       = module.express_route_connections.express_route_connections_express_route_gateway_bypass_enabled
}

output "express_route_connections_express_route_gateway_id" {
  description = "Map of express_route_gateway_id values across all express_route_connections, keyed the same as var.express_route_connections"
  value       = module.express_route_connections.express_route_connections_express_route_gateway_id
}

output "express_route_connections_internet_security_enabled" {
  description = "Map of internet_security_enabled values across all express_route_connections, keyed the same as var.express_route_connections"
  value       = module.express_route_connections.express_route_connections_internet_security_enabled
}

output "express_route_connections_name" {
  description = "Map of name values across all express_route_connections, keyed the same as var.express_route_connections"
  value       = module.express_route_connections.express_route_connections_name
}

output "express_route_connections_private_link_fast_path_enabled" {
  description = "Map of private_link_fast_path_enabled values across all express_route_connections, keyed the same as var.express_route_connections"
  value       = module.express_route_connections.express_route_connections_private_link_fast_path_enabled
}

output "express_route_connections_routing" {
  description = "Map of routing values across all express_route_connections, keyed the same as var.express_route_connections"
  value       = module.express_route_connections.express_route_connections_routing
}

output "express_route_connections_routing_weight" {
  description = "Map of routing_weight values across all express_route_connections, keyed the same as var.express_route_connections"
  value       = module.express_route_connections.express_route_connections_routing_weight
}


