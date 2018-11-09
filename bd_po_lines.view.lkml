view: bd_po_lines {
  sql_table_name: corex_stage.bd_po_lines ;;

  dimension: bt_id {
    type: string
    sql: ${TABLE}.bt_id ;;
  }

  dimension: businessprocessid {
    type: string
    sql: ${TABLE}.businessprocessid ;;
  }

  dimension: buyerpartnumber {
    type: string
    sql: ${TABLE}.buyerpartnumber ;;
  }

  dimension: doc_id {
    type: string
    sql: ${TABLE}.doc_id ;;
  }

  dimension: documentflowid {
    type: string
    sql: ${TABLE}.documentflowid ;;
  }

  dimension: extendedprice {
    type: number
    sql: ${TABLE}.extendedprice ;;
  }

  dimension: flowid {
    type: string
    sql: ${TABLE}.flowid ;;
  }

  dimension: itemdescription {
    type: string
    sql: ${TABLE}.itemdescription ;;
  }

  dimension: lineid {
    type: string
    primary_key: yes
    sql: ${TABLE}.lineid ;;
  }

  dimension: linenumber {
    type: string
    sql: ${TABLE}.linenumber ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: manufacturerpartnumber {
    type: string
    sql: ${TABLE}.manufacturerpartnumber ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: supplierpartnumber {
    type: string
    sql: ${TABLE}.supplierpartnumber ;;
  }

  dimension: unitprice {
    type: number
    sql: ${TABLE}.unitprice ;;
  }

  dimension: unitpricecode {
    type: string
    sql: ${TABLE}.unitpricecode ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.uom ;;
  }

  measure: count {
    type: count
    drill_fields: [bd_po_header.receivedfrompartnerts_date, bd_po_header.ponumber, linenumber, buyerpartnumber]
  }
}
