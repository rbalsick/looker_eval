view: bd_inv_lines {
  sql_table_name: corex_stage.bd_inv_lines ;;

  dimension: bt_id {
    type: string
    sql: ${TABLE}.bt_id ;;
  }

  dimension: buyerpartnumber {
    type: string
    sql: ${TABLE}.buyerpartnumber ;;
  }

  dimension: doc_id {
    type: string
    sql: ${TABLE}.doc_id ;;
  }

  dimension: extendedprice {
    type: number
    sql: ${TABLE}.extendedprice ;;
  }

  dimension: invoicenumber {
    type: string
    sql: ${TABLE}.invoicenumber ;;
  }

  dimension: itemdescription {
    type: string
    sql: ${TABLE}.itemdescription ;;
  }

  dimension: lineid {
    type: string
    sql: ${TABLE}.lineid ;;
  }

  dimension: linenumber {
    type: string
    sql: ${TABLE}.linenumber ;;
  }

  dimension: linestatus {
    type: string
    sql: ${TABLE}.linestatus ;;
  }

  dimension: localtax {
    type: number
    sql: ${TABLE}.localtax ;;
  }

  dimension: lotnumber {
    type: string
    sql: ${TABLE}.lotnumber ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: manufacturerpartnumber {
    type: string
    sql: ${TABLE}.manufacturerpartnumber ;;
  }

  dimension: misctax {
    type: number
    sql: ${TABLE}.misctax ;;
  }

  dimension: ponumber {
    type: string
    sql: ${TABLE}.ponumber ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: serialnumber {
    type: string
    sql: ${TABLE}.serialnumber ;;
  }

  dimension: statetax {
    type: number
    sql: ${TABLE}.statetax ;;
  }

  dimension: supplierpartnumber {
    type: string
    sql: ${TABLE}.supplierpartnumber ;;
  }

  dimension_group: timereceived {
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
    sql: ${TABLE}.timereceived ;;
  }

  dimension_group: timesent {
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
    sql: ${TABLE}.timesent ;;
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
    drill_fields: []
  }
}
