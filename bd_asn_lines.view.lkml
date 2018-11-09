view: bd_asn_lines {
  sql_table_name: corex_stage.bd_asn_lines ;;

  dimension: asnnumber {
    type: string
    sql: ${TABLE}.asnnumber ;;
  }

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

  dimension: itemdescription {
    type: string
    sql: ${TABLE}.itemdescription ;;
  }

  dimension: linecarrier {
    type: string
    sql: ${TABLE}.linecarrier ;;
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

  dimension: lineshipfrom_alias {
    type: string
    sql: ${TABLE}.lineshipfrom_alias ;;
  }

  dimension: lineshipfrom_description {
    type: string
    sql: ${TABLE}.lineshipfrom_description ;;
  }

  dimension: lineshipfrom_geographiclocation {
    type: string
    sql: ${TABLE}.lineshipfrom_geographiclocation ;;
  }

  dimension: lineshipfrom_street {
    type: string
    sql: ${TABLE}.lineshipfrom_street ;;
  }

  dimension: linestatus {
    type: string
    sql: ${TABLE}.linestatus ;;
  }

  dimension: linetrackingnumber {
    type: string
    sql: ${TABLE}.linetrackingnumber ;;
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
