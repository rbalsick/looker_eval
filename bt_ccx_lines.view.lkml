view: bt_ccx_lines {
  sql_table_name: corex_stage.bt_ccx_lines ;;

  dimension: bt_id {
    type: string
    sql: ${TABLE}.bt_id ;;
  }

  dimension: btl_line_id {
    type: string
    sql: ${TABLE}.btl_line_id ;;
  }

  dimension: btl_linenumber {
    type: string
    sql: ${TABLE}.btl_linenumber ;;
  }

  dimension: contract_calculatedprice {
    type: number
    sql: ${TABLE}.contract_calculatedprice ;;
  }

  dimension: contract_contractqoe {
    type: number
    sql: ${TABLE}.contract_contractqoe ;;
  }

  dimension_group: contract_expirationdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.contract_expirationdate ;;
  }

  dimension: contract_itemmanufacturername {
    type: string
    sql: ${TABLE}.contract_itemmanufacturername ;;
  }

  dimension: contract_manufacturerpartnumber {
    type: string
    sql: ${TABLE}.contract_manufacturerpartnumber ;;
  }

  dimension: contract_number {
    type: string
    sql: ${TABLE}.contract_number ;;
  }

  dimension: contract_org_id {
    type: number
    sql: ${TABLE}.contract_org_id ;;
  }

  dimension: contract_partnumber {
    type: string
    sql: ${TABLE}.contract_partnumber ;;
  }

  dimension: contract_price {
    type: number
    sql: ${TABLE}.contract_price ;;
  }

  dimension: contract_queriedqoe {
    type: number
    sql: ${TABLE}.contract_queriedqoe ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.contract_type ;;
  }

  dimension: contract_uom {
    type: string
    sql: ${TABLE}.contract_uom ;;
  }

  measure: count {
    type: count
    drill_fields: [contract_itemmanufacturername]
  }
}
