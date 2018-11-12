view: bd_poa_ack_lines {
  sql_table_name: corex_stage.bd_poa_ack_lines ;;

  dimension: acklinebuyerpart {
    type: string
    sql: ${TABLE}.acklinebuyerpart ;;
  }

  dimension_group: acklinedate {
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
    sql: ${TABLE}.acklinedate ;;
  }

  dimension: acklinedatetype {
    type: string
    sql: ${TABLE}.acklinedatetype ;;
  }

  dimension_group: acklineestdeliverydate {
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
    sql: ${TABLE}.acklineestdeliverydate ;;
  }

  dimension: acklineqty {
    type: number
    sql: ${TABLE}.acklineqty ;;
  }

  dimension_group: acklinescheduleddeliverydate {
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
    sql: ${TABLE}.acklinescheduleddeliverydate ;;
  }

  dimension: acklinestatus {
    type: string
    sql: ${TABLE}.acklinestatus ;;
  }

  dimension: acklinesupplierpart {
    type: string
    sql: ${TABLE}.acklinesupplierpart ;;
  }

  dimension: acklineuom {
    type: string
    sql: ${TABLE}.acklineuom ;;
  }

  dimension: bt_id {
    type: string
    sql: ${TABLE}.bt_id ;;
  }

  dimension: doc_id {
    type: string
    sql: ${TABLE}.doc_id ;;
  }

  dimension: line_id {
    type: string
    sql: ${TABLE}.line_id ;;
  }

  dimension: linenumber {
    type: string
    sql: ${TABLE}.linenumber ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
