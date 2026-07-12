variable "express_route_circuits" {
  description = <<EOT
Map of express_route_circuits, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku (block)
Optional:
    - allow_classic_operations
    - authorization_key
    - authorization_key_key_vault_id (alternative to authorization_key - read from Key Vault instead)
    - authorization_key_key_vault_secret_name (alternative to authorization_key - read from Key Vault instead)
    - bandwidth_in_gbps
    - bandwidth_in_mbps
    - express_route_port_id
    - peering_location
    - rate_limiting_enabled
    - service_provider_name
    - tags
Nested express_route_circuit_authorizations (azurerm_express_route_circuit_authorization):
    Required:
        - name
        - resource_group_name
Nested express_route_circuit_peerings (azurerm_express_route_circuit_peering):
    Required:
        - peering_type
        - resource_group_name
        - vlan_id
    Optional:
        - ipv4_enabled
        - peer_asn
        - primary_peer_address_prefix
        - route_filter_id
        - secondary_peer_address_prefix
        - shared_key
        - shared_key_key_vault_id (alternative to shared_key - read from Key Vault instead)
        - shared_key_key_vault_secret_name (alternative to shared_key - read from Key Vault instead)
        - ipv6 (block)
        - microsoft_peering_config (block)
    Nested express_route_connections (azurerm_express_route_connection):
        Required:
            - express_route_gateway_id
            - name
        Optional:
            - authorization_key
            - enable_internet_security
            - express_route_gateway_bypass_enabled
            - internet_security_enabled
            - private_link_fast_path_enabled
            - routing_weight
            - routing (block)
EOT

  type = map(object({
    location                                = string
    name                                    = string
    resource_group_name                     = string
    allow_classic_operations                = optional(bool) # Default: false
    authorization_key                       = optional(string)
    authorization_key_key_vault_id          = optional(string)
    authorization_key_key_vault_secret_name = optional(string)
    bandwidth_in_gbps                       = optional(number)
    bandwidth_in_mbps                       = optional(number)
    express_route_port_id                   = optional(string)
    peering_location                        = optional(string)
    rate_limiting_enabled                   = optional(bool) # Default: false
    service_provider_name                   = optional(string)
    tags                                    = optional(map(string))
    sku = object({
      family = string
      tier   = string
    })
    express_route_circuit_authorizations = optional(map(object({
      name                = string
      resource_group_name = string
    })))
    express_route_circuit_peerings = optional(map(object({
      peering_type                     = string
      resource_group_name              = string
      vlan_id                          = number
      ipv4_enabled                     = optional(bool) # Default: true
      peer_asn                         = optional(number)
      primary_peer_address_prefix      = optional(string)
      route_filter_id                  = optional(string)
      secondary_peer_address_prefix    = optional(string)
      shared_key                       = optional(string)
      shared_key_key_vault_id          = optional(string)
      shared_key_key_vault_secret_name = optional(string)
      ipv6 = optional(object({
        enabled = optional(bool) # Default: true
        microsoft_peering = optional(object({
          advertised_communities     = optional(list(string))
          advertised_public_prefixes = optional(list(string))
          customer_asn               = optional(number) # Default: 0
          routing_registry_name      = optional(string) # Default: "NONE"
        }))
        primary_peer_address_prefix   = string
        route_filter_id               = optional(string)
        secondary_peer_address_prefix = string
      }))
      microsoft_peering_config = optional(object({
        advertised_communities     = optional(list(string))
        advertised_public_prefixes = list(string)
        customer_asn               = optional(number) # Default: 0
        routing_registry_name      = optional(string) # Default: "NONE"
      }))
      express_route_connections = optional(map(object({
        express_route_gateway_id             = string
        name                                 = string
        authorization_key                    = optional(string)
        enable_internet_security             = optional(bool)
        express_route_gateway_bypass_enabled = optional(bool) # Default: false
        internet_security_enabled            = optional(bool)
        private_link_fast_path_enabled       = optional(bool)
        routing_weight                       = optional(number) # Default: 0
        routing = optional(object({
          associated_route_table_id = optional(string)
          inbound_route_map_id      = optional(string)
          outbound_route_map_id     = optional(string)
          propagated_route_table = optional(object({
            labels          = optional(set(string))
            route_table_ids = optional(list(string))
          }))
        }))
      })))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.express_route_circuits) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.express_route_circuits : [for kk in keys(coalesce(v0.express_route_circuit_authorizations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.express_route_circuits : [for kk in keys(coalesce(v0.express_route_circuit_peerings, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.express_route_circuits : [for k1, v1 in coalesce(v0.express_route_circuit_peerings, {}) : [for kk in keys(coalesce(v1.express_route_connections, {})) : !strcontains(kk, "/")]]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
