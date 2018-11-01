view: bd_inv_header {
  sql_table_name: corex_stage.bd_inv_header ;;

  dimension: accountnumber {
    type: string
    sql: ${TABLE}.accountnumber ;;
  }

  dimension: adapterid {
    type: string
    sql: ${TABLE}.adapterid ;;
  }

  dimension: aprimeinboundintegrationstatus {
    type: string
    sql: ${TABLE}.aprimeinboundintegrationstatus ;;
  }

  dimension: archived {
    type: yesno
    sql: ${TABLE}.archived ;;
  }

  dimension: billto_alias {
    type: string
    sql: ${TABLE}.billto_alias ;;
  }

  dimension: billto_description {
    type: string
    sql: ${TABLE}.billto_description ;;
  }

  dimension: billto_geographiclocation {
    type: string
    sql: ${TABLE}.billto_geographiclocation ;;
  }

  dimension: billtoaccountnumber {
    type: string
    sql: ${TABLE}.billtoaccountnumber ;;
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

  dimension: controlid {
    type: string
    sql: ${TABLE}.controlid ;;
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

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: deliveryformat {
    type: string
    sql: ${TABLE}.deliveryformat ;;
  }

  dimension: deliverymethod {
    type: string
    sql: ${TABLE}.deliverymethod ;;
  }

  dimension: deliverystatus {
    type: string
    sql: ${TABLE}.deliverystatus ;;
  }

  dimension: doc_id {
    type: string
    sql: ${TABLE}.doc_id ;;
  }

  dimension: docstoreinboundintegrationstatus {
    type: string
    sql: ${TABLE}.docstoreinboundintegrationstatus ;;
  }

  dimension: docstoreoutboundintegrationstatus {
    type: string
    sql: ${TABLE}.docstoreoutboundintegrationstatus ;;
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

  dimension: invoicenumber {
    type: string
    sql: ${TABLE}.invoicenumber ;;
  }

  dimension: invoicestatus {
    type: string
    sql: ${TABLE}.invoicestatus ;;
  }

  dimension: invoicetype {
    type: string
    sql: ${TABLE}.invoicetype ;;
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

  dimension: mrsinboundintegrationstatus {
    type: string
    sql: ${TABLE}.mrsinboundintegrationstatus ;;
  }

  dimension: mrsoutboundintegrationstatus {
    type: string
    sql: ${TABLE}.mrsoutboundintegrationstatus ;;
  }

  dimension: outboundchannel {
    type: string
    sql: ${TABLE}.outboundchannel ;;
  }

  dimension: partnertransactionnumber {
    type: string
    sql: ${TABLE}.partnertransactionnumber ;;
  }

  dimension: payerid {
    type: string
    sql: ${TABLE}.payerid ;;
  }

  dimension_group: podate {
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
    sql: ${TABLE}.podate ;;
  }

  dimension: ponumber {
    type: string
    sql: ${TABLE}.ponumber ;;
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

  dimension: receiver {
    type: string
    sql: ${TABLE}.receiver ;;
  }

  dimension: receivereid {
    type: string
    sql: ${TABLE}.receivereid ;;
  }

  dimension: receiverid {
    type: string
    sql: ${TABLE}.receiverid ;;
  }

  dimension: receiverroot {
    type: string
    sql: ${TABLE}.receiverroot ;;
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

  dimension: remitto_description {
    type: string
    sql: ${TABLE}.remitto_description ;;
  }

  dimension: remitto_geographiclocation {
    type: string
    sql: ${TABLE}.remitto_geographiclocation ;;
  }

  dimension: remitto_street {
    type: string
    sql: ${TABLE}.remitto_street ;;
  }

  dimension: sender {
    type: string
    sql: ${TABLE}.sender ;;
  }

  dimension: sendereid {
    type: string
    sql: ${TABLE}.sendereid ;;
  }

  dimension: senderid {
    type: string
    sql: ${TABLE}.senderid ;;
  }

  dimension: senderroot {
    type: string
    sql: ${TABLE}.senderroot ;;
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

  dimension: shipto_description {
    type: string
    sql: ${TABLE}.shipto_description ;;
  }

  dimension: shipto_geographiclocation {
    type: string
    sql: ${TABLE}.shipto_geographiclocation ;;
  }

  dimension: shipto_street {
    type: string
    sql: ${TABLE}.shipto_street ;;
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

  dimension: termsdescription {
    type: string
    sql: ${TABLE}.termsdescription ;;
  }

  dimension: termsdiscountpercent {
    type: number
    sql: ${TABLE}.termsdiscountpercent ;;
  }

  dimension: totalamount {
    type: number
    sql: ${TABLE}.totalamount ;;
  }

  dimension: totalcharges {
    type: number
    sql: ${TABLE}.totalcharges ;;
  }

  dimension: totallinescount {
    type: number
    sql: ${TABLE}.totallinescount ;;
  }

  dimension: totalquantity {
    type: number
    sql: ${TABLE}.totalquantity ;;
  }

  dimension: totaltaxes {
    type: number
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
