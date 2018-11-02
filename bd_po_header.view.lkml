view: bd_po_header {
  sql_table_name: corex_stage.bd_po_header ;;

  dimension: accountnumber {
    type: string
    sql: ${TABLE}.accountnumber ;;
  }

  dimension: adapterid {
    type: string
    sql: ${TABLE}.adapterid ;;
  }

  dimension: archived {
    type: yesno
    sql: ${TABLE}.archived ;;
  }

  dimension: billto_alias {
    type: string
    sql: ${TABLE}.billto_alias ;;
  }

  dimension: billtoeid {
    type: string
    sql: ${TABLE}.billtoeid ;;
  }

  dimension: bt_id {
    type: string
    sql: ${TABLE}.bt_id ;;
  }

  dimension: businessprocessid {
    type: string
    sql: ${TABLE}.businessprocessid ;;
  }

  dimension: buyername {
    type: string
    sql: ${TABLE}.buyername ;;
  }

  dimension_group: completedts {
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
    sql: ${TABLE}.completedts ;;
  }

  dimension: controllid {
    type: string
    sql: ${TABLE}.controllid ;;
  }

  dimension_group: createdts {
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
    sql: ${TABLE}.createdts ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: deliverymethod {
    type: string
    sql: ${TABLE}.deliverymethod ;;
  }

  dimension: department_number {
    type: string
    sql: ${TABLE}.department_number ;;
  }

  dimension: doc_id {
    type: string
    sql: ${TABLE}.doc_id ;;
  }

  dimension: documentflowid {
    type: string
    sql: ${TABLE}.documentflowid ;;
  }

  dimension: documentnumber {
    type: string
    sql: ${TABLE}.documentnumber ;;
  }

  dimension: exceptionsexist {
    type: yesno
    sql: ${TABLE}.exceptionsexist ;;
  }

  dimension: flowid {
    type: string
    sql: ${TABLE}.flowid ;;
  }

  dimension: ghxordernumber {
    type: string
    sql: ${TABLE}.ghxordernumber ;;
  }

  dimension: gsreceiver {
    type: string
    sql: ${TABLE}.gsreceiver ;;
  }

  dimension: gssender {
    type: string
    sql: ${TABLE}.gssender ;;
  }

  dimension: inboundchannel {
    type: string
    sql: ${TABLE}.inboundchannel ;;
  }

  dimension: isareceiver {
    type: string
    sql: ${TABLE}.isareceiver ;;
  }

  dimension: isasender {
    type: string
    sql: ${TABLE}.isasender ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: nocontractvalidation {
    type: number
    sql: ${TABLE}.nocontractvalidation ;;
  }

  measure: nocontractvalidationamount {
    type: sum
    sql: ${TABLE}.nocontractvalidationamount ;;
  }

  dimension: oncontract {
    type: number
    sql: ${TABLE}.oncontract ;;
  }

  measure: oncontractamount {
    type: sum
    sql: ${TABLE}.oncontractamount ;;
  }

  dimension: outboundchannel {
    type: string
    sql: ${TABLE}.outboundchannel ;;
  }

  dimension: partnertransactionnumber {
    type: string
    sql: ${TABLE}.partnertransactionnumber ;;
  }

  dimension: ponumber {
    type: string
    sql: ${TABLE}.ponumber ;;
  }

  dimension: potype {
    type: string
    sql: ${TABLE}.potype ;;
  }

  dimension_group: receivedfrompartnerts {
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
    sql: ${TABLE}.receivedfrompartnerts ;;
  }

  dimension: receivereid {
    type: string
    sql: ${TABLE}.receivereid ;;
  }

  dimension: receiverid {
    type: string
    sql: ${TABLE}.receiverid ;;
  }

  dimension: receiverrooteid {
    type: string
    sql: ${TABLE}.receiverrooteid ;;
  }

  dimension: receiverrootid {
    type: string
    sql: ${TABLE}.receiverrootid ;;
  }

  dimension: releasenumber {
    type: string
    sql: ${TABLE}.releasenumber ;;
  }

  dimension: sendereid {
    type: string
    sql: ${TABLE}.sendereid ;;
  }

  dimension: senderid {
    type: string
    sql: ${TABLE}.senderid ;;
  }

  dimension: senderrooteid {
    type: string
    sql: ${TABLE}.senderrooteid ;;
  }

  dimension: senderrootid {
    type: string
    sql: ${TABLE}.senderrootid ;;
  }

  dimension_group: senttopartnerts {
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
    sql: ${TABLE}.senttopartnerts ;;
  }

  dimension: shipto_alias {
    type: string
    sql: ${TABLE}.shipto_alias ;;
  }

  dimension: shiptoeid {
    type: string
    sql: ${TABLE}.shiptoeid ;;
  }

  dimension: sourceuser {
    type: string
    sql: ${TABLE}.sourceuser ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: stcount {
    type: number
    sql: ${TABLE}.stcount ;;
  }

  measure: totalamount {
    type: sum
    value_format_name: usd
    sql: ${TABLE}.totalamount ;;
  }

  measure: totallinescount {
    type: sum
    sql: ${TABLE}.totallinescount ;;
  }

  measure: totalquantity {
    type: sum
    sql: ${TABLE}.totalquantity ;;
  }

  measure: totaltaxes {
    type: sum
    value_format_name: usd
    sql: ${TABLE}.totaltaxes ;;
  }

  dimension: tradingnet {
    type: yesno
    sql: ${TABLE}.tradingnet ;;
  }

  dimension: trafficmode {
    type: string
    sql: ${TABLE}.trafficmode ;;
  }

  dimension_group: updatedts {
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
    sql: ${TABLE}.updatedts ;;
  }

  measure: count {
    type: count
    drill_fields: [buyername]
  }
}
