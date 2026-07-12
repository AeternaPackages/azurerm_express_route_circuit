locals {
  express_route_circuits = { for k1, v1 in var.express_route_circuits : k1 => { allow_classic_operations = v1.allow_classic_operations, authorization_key = v1.authorization_key, bandwidth_in_gbps = v1.bandwidth_in_gbps, bandwidth_in_mbps = v1.bandwidth_in_mbps, express_route_port_id = v1.express_route_port_id, location = v1.location, name = v1.name, peering_location = v1.peering_location, rate_limiting_enabled = v1.rate_limiting_enabled, resource_group_name = v1.resource_group_name, service_provider_name = v1.service_provider_name, sku = v1.sku, tags = v1.tags } }

  express_route_circuit_authorizations = merge([
    for k1, v1 in var.express_route_circuits : {
      for k2, v2 in coalesce(v1.express_route_circuit_authorizations, {}) :
      "${k1}/${k2}" => merge(v2, {
        express_route_circuit_name = module.express_route_circuits.express_route_circuits_name["${k1}"]
      })
    }
  ]...)

  express_route_circuit_peerings = merge([
    for k1, v1 in var.express_route_circuits : {
      for k2, v2 in coalesce(v1.express_route_circuit_peerings, {}) :
      "${k1}/${k2}" => merge(v2, {
        express_route_circuit_name = module.express_route_circuits.express_route_circuits_name["${k1}"]
      })
    }
  ]...)

  express_route_connections = merge([
    for k1, v1 in var.express_route_circuits : merge([
      for k2, v2 in coalesce(v1.express_route_circuit_peerings, {}) : {
        for k3, v3 in coalesce(v2.express_route_connections, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          express_route_circuit_peering_id = module.express_route_circuit_peerings.express_route_circuit_peerings_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)
}

module "express_route_circuits" {
  source                 = "git::https://github.com/AeternaModules/azurerm_express_route_circuit.git?ref=v4.80.0"
  express_route_circuits = local.express_route_circuits
}

module "express_route_circuit_authorizations" {
  source                               = "git::https://github.com/AeternaModules/azurerm_express_route_circuit_authorization.git?ref=v4.80.0"
  express_route_circuit_authorizations = local.express_route_circuit_authorizations
  depends_on                           = [module.express_route_circuits]
}

module "express_route_circuit_peerings" {
  source                         = "git::https://github.com/AeternaModules/azurerm_express_route_circuit_peering.git?ref=v4.80.0"
  express_route_circuit_peerings = local.express_route_circuit_peerings
  depends_on                     = [module.express_route_circuits]
}

module "express_route_connections" {
  source                    = "git::https://github.com/AeternaModules/azurerm_express_route_connection.git?ref=v4.80.0"
  express_route_connections = local.express_route_connections
  depends_on                = [module.express_route_circuit_peerings]
}

