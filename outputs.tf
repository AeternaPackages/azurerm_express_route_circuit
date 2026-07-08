# --- azurerm_express_route_circuit ---
output "express_route_circuits" {
  description = "All express_route_circuit resources"
  value       = module.express_route_circuits.express_route_circuits
  sensitive   = true
}
output "express_route_circuits_allow_classic_operations" {
  description = "List of allow_classic_operations values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.allow_classic_operations]
}
output "express_route_circuits_authorization_key" {
  description = "List of authorization_key values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.authorization_key]
  sensitive   = true
}
output "express_route_circuits_bandwidth_in_gbps" {
  description = "List of bandwidth_in_gbps values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.bandwidth_in_gbps]
}
output "express_route_circuits_bandwidth_in_mbps" {
  description = "List of bandwidth_in_mbps values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.bandwidth_in_mbps]
}
output "express_route_circuits_express_route_port_id" {
  description = "List of express_route_port_id values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.express_route_port_id]
}
output "express_route_circuits_location" {
  description = "List of location values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.location]
}
output "express_route_circuits_name" {
  description = "List of name values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.name]
}
output "express_route_circuits_peering_location" {
  description = "List of peering_location values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.peering_location]
}
output "express_route_circuits_rate_limiting_enabled" {
  description = "List of rate_limiting_enabled values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.rate_limiting_enabled]
}
output "express_route_circuits_resource_group_name" {
  description = "List of resource_group_name values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.resource_group_name]
}
output "express_route_circuits_service_key" {
  description = "List of service_key values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.service_key]
  sensitive   = true
}
output "express_route_circuits_service_provider_name" {
  description = "List of service_provider_name values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.service_provider_name]
}
output "express_route_circuits_service_provider_provisioning_state" {
  description = "List of service_provider_provisioning_state values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.service_provider_provisioning_state]
}
output "express_route_circuits_sku" {
  description = "List of sku values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.sku]
}
output "express_route_circuits_tags" {
  description = "List of tags values across all express_route_circuits"
  value       = [for k, v in module.express_route_circuits.express_route_circuits : v.tags]
}


# --- azurerm_express_route_circuit_authorization ---
output "express_route_circuit_authorizations" {
  description = "All express_route_circuit_authorization resources"
  value       = module.express_route_circuit_authorizations.express_route_circuit_authorizations
  sensitive   = true
}
output "express_route_circuit_authorizations_authorization_key" {
  description = "List of authorization_key values across all express_route_circuit_authorizations"
  value       = [for k, v in module.express_route_circuit_authorizations.express_route_circuit_authorizations : v.authorization_key]
  sensitive   = true
}
output "express_route_circuit_authorizations_authorization_use_status" {
  description = "List of authorization_use_status values across all express_route_circuit_authorizations"
  value       = [for k, v in module.express_route_circuit_authorizations.express_route_circuit_authorizations : v.authorization_use_status]
}
output "express_route_circuit_authorizations_express_route_circuit_name" {
  description = "List of express_route_circuit_name values across all express_route_circuit_authorizations"
  value       = [for k, v in module.express_route_circuit_authorizations.express_route_circuit_authorizations : v.express_route_circuit_name]
}
output "express_route_circuit_authorizations_name" {
  description = "List of name values across all express_route_circuit_authorizations"
  value       = [for k, v in module.express_route_circuit_authorizations.express_route_circuit_authorizations : v.name]
}
output "express_route_circuit_authorizations_resource_group_name" {
  description = "List of resource_group_name values across all express_route_circuit_authorizations"
  value       = [for k, v in module.express_route_circuit_authorizations.express_route_circuit_authorizations : v.resource_group_name]
}


# --- azurerm_express_route_circuit_peering ---
output "express_route_circuit_peerings" {
  description = "All express_route_circuit_peering resources"
  value       = module.express_route_circuit_peerings.express_route_circuit_peerings
  sensitive   = true
}
output "express_route_circuit_peerings_azure_asn" {
  description = "List of azure_asn values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.azure_asn]
}
output "express_route_circuit_peerings_express_route_circuit_name" {
  description = "List of express_route_circuit_name values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.express_route_circuit_name]
}
output "express_route_circuit_peerings_gateway_manager_etag" {
  description = "List of gateway_manager_etag values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.gateway_manager_etag]
}
output "express_route_circuit_peerings_ipv4_enabled" {
  description = "List of ipv4_enabled values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.ipv4_enabled]
}
output "express_route_circuit_peerings_ipv6" {
  description = "List of ipv6 values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.ipv6]
}
output "express_route_circuit_peerings_microsoft_peering_config" {
  description = "List of microsoft_peering_config values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.microsoft_peering_config]
}
output "express_route_circuit_peerings_peer_asn" {
  description = "List of peer_asn values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.peer_asn]
}
output "express_route_circuit_peerings_peering_type" {
  description = "List of peering_type values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.peering_type]
}
output "express_route_circuit_peerings_primary_azure_port" {
  description = "List of primary_azure_port values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.primary_azure_port]
}
output "express_route_circuit_peerings_primary_peer_address_prefix" {
  description = "List of primary_peer_address_prefix values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.primary_peer_address_prefix]
}
output "express_route_circuit_peerings_resource_group_name" {
  description = "List of resource_group_name values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.resource_group_name]
}
output "express_route_circuit_peerings_route_filter_id" {
  description = "List of route_filter_id values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.route_filter_id]
}
output "express_route_circuit_peerings_secondary_azure_port" {
  description = "List of secondary_azure_port values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.secondary_azure_port]
}
output "express_route_circuit_peerings_secondary_peer_address_prefix" {
  description = "List of secondary_peer_address_prefix values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.secondary_peer_address_prefix]
}
output "express_route_circuit_peerings_shared_key" {
  description = "List of shared_key values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.shared_key]
  sensitive   = true
}
output "express_route_circuit_peerings_vlan_id" {
  description = "List of vlan_id values across all express_route_circuit_peerings"
  value       = [for k, v in module.express_route_circuit_peerings.express_route_circuit_peerings : v.vlan_id]
}


# --- azurerm_express_route_connection ---
output "express_route_connections" {
  description = "All express_route_connection resources"
  value       = module.express_route_connections.express_route_connections
}
output "express_route_connections_authorization_key" {
  description = "List of authorization_key values across all express_route_connections"
  value       = [for k, v in module.express_route_connections.express_route_connections : v.authorization_key]
}
output "express_route_connections_enable_internet_security" {
  description = "List of enable_internet_security values across all express_route_connections"
  value       = [for k, v in module.express_route_connections.express_route_connections : v.enable_internet_security]
}
output "express_route_connections_express_route_circuit_peering_id" {
  description = "List of express_route_circuit_peering_id values across all express_route_connections"
  value       = [for k, v in module.express_route_connections.express_route_connections : v.express_route_circuit_peering_id]
}
output "express_route_connections_express_route_gateway_bypass_enabled" {
  description = "List of express_route_gateway_bypass_enabled values across all express_route_connections"
  value       = [for k, v in module.express_route_connections.express_route_connections : v.express_route_gateway_bypass_enabled]
}
output "express_route_connections_express_route_gateway_id" {
  description = "List of express_route_gateway_id values across all express_route_connections"
  value       = [for k, v in module.express_route_connections.express_route_connections : v.express_route_gateway_id]
}
output "express_route_connections_internet_security_enabled" {
  description = "List of internet_security_enabled values across all express_route_connections"
  value       = [for k, v in module.express_route_connections.express_route_connections : v.internet_security_enabled]
}
output "express_route_connections_name" {
  description = "List of name values across all express_route_connections"
  value       = [for k, v in module.express_route_connections.express_route_connections : v.name]
}
output "express_route_connections_private_link_fast_path_enabled" {
  description = "List of private_link_fast_path_enabled values across all express_route_connections"
  value       = [for k, v in module.express_route_connections.express_route_connections : v.private_link_fast_path_enabled]
}
output "express_route_connections_routing" {
  description = "List of routing values across all express_route_connections"
  value       = [for k, v in module.express_route_connections.express_route_connections : v.routing]
}
output "express_route_connections_routing_weight" {
  description = "List of routing_weight values across all express_route_connections"
  value       = [for k, v in module.express_route_connections.express_route_connections : v.routing_weight]
}



