connection: "production_redshift"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
explore: bd_po_header {
  join: bd_po_lines {
    relationship: one_to_many
    sql_on: ${bd_po_header.bt_id} = ${bd_po_lines.bt_id} ;;
  }

#   join: bd_poa_header {
#     relationship: one_to_many
#     sql_on: ${bd_po_header.bt_id} = ${bd_poa_header.bt_id} ;;
#   }
#
#   join: bd_inv_header {
#     relationship: one_to_many
#     sql_on: ${bd_po_header.bt_id} = ${bd_inv_header.bt_id} ;;
#   }
#
#   join: bd_asn_header {
#     relationship: one_to_many
#     sql_on: ${bd_po_header.bt_id} = ${bd_asn_header.bt_id} ;;
#   }

  join: d_provider {
    relationship: one_to_one
    sql_on: ${bd_po_header.senderrooteid} = ${d_provider.eid} ;;
  }

  join: d_vendor {
    relationship: one_to_one
    sql_on: ${bd_po_header.receiverrooteid} = ${d_vendor.eid} ;;
  }
}

explore: bd_po_lines {
  join: bd_po_header {
    relationship: many_to_one
    sql_on: ${bd_po_lines.bt_id} = ${bd_po_header.bt_id} ;;
  }
}

explore: bd_poa_header {
  join: bd_poa_lines {
    relationship: one_to_many
    sql_on: ${bd_poa_header.bt_id} = ${bd_poa_lines.bt_id} ;;
  }

#   join: d_provider {
#     relationship: one_to_one
#     sql_on: ${bd_poa_header.receiverrooteid} = ${d_provider.eid} ;;
#   }
#
#   join: d_vendor {
#     relationship: one_to_one
#     sql_on: ${bd_poa_header.senderrooteid} = ${d_vendor.eid} ;;
#   }
}

explore: bd_inv_header {
  join: bd_inv_lines {
    relationship: one_to_many
    sql_on: ${bd_inv_header.bt_id} = ${bd_inv_lines.bt_id} ;;
  }

#   join: d_provider {
#     relationship: one_to_one
#     sql_on: ${bd_inv_header.receiverrooteid} = ${d_provider.eid} ;;
#   }
#
#   join: d_vendor {
#     relationship: one_to_one
#     sql_on: ${bd_inv_header.senderrooteid} = ${d_vendor.eid} ;;
#   }
}

explore: bd_asn_header {
  join: bd_asn_lines {
    relationship: one_to_many
    sql_on: ${bd_asn_header.bt_id} = ${bd_asn_lines.bt_id} ;;
  }

#   join: d_provider {
#     relationship: one_to_one
#     sql_on: ${bd_asn_header.receiverrooteid} = ${d_provider.eid} ;;
#   }
#
#   join: d_vendor {
#     relationship: one_to_one
#     sql_on: ${bd_asn_header.senderrooteid} = ${d_vendor.eid} ;;
#   }
}

explore: d_provider {
  sql_always_where: ${pi_org_flg} = TRUE ;;
}

explore: rfm_analysis {
  join: d_provider {
    relationship: one_to_one
    sql_where: ${d_provider.pi_org_flg} = TRUE ;;
    sql_on: ${d_provider.eid} = ${rfm_analysis.provider_root_eid} ;;
  }

  join: d_vendor {
    relationship: one_to_one
    sql_on: ${d_vendor.eid} = ${rfm_analysis.supplier_root_eid} ;;
  }
}

explore: dim_root_provider {
    from: vw_dim_eid
    join: bd_po_header {
      relationship: one_to_many
      sql_where: ${dim_root_provider.source} = 'provider' AND ${dim_root_provider.parent_id} = '-10' ;;
      sql_on: ${bd_po_header.senderrooteid} = ${dim_root_provider.tpm_eid};;
    }
}
