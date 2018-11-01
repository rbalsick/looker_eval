view: bd_asn_header {
  sql_table_name: corex_stage.bd_asn_header ;;

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

  dimension: asnnumber {
    type: string
    sql: ${TABLE}.asnnumber ;;
  }

  dimension: billtoaccountnumber {
    type: string
    sql: ${TABLE}.billtoaccountnumber ;;
  }

  dimension: billtoalias {
    type: string
    sql: ${TABLE}.billtoalias ;;
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

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
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

  dimension: mrsinboundintegrationstatus {
    type: string
    sql: ${TABLE}.mrsinboundintegrationstatus ;;
  }

  dimension: mrsoutboundintegrationstatus {
    type: string
    sql: ${TABLE}.mrsoutboundintegrationstatus ;;
  }

  dimension: multilevelasn {
    type: yesno
    sql: ${TABLE}.multilevelasn ;;
  }

  dimension: outboundchannel {
    type: string
    sql: ${TABLE}.outboundchannel ;;
  }

  dimension: partnertransactionnumber {
    type: string
    sql: ${TABLE}.partnertransactionnumber ;;
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

  dimension: predecessorid {
    type: string
    sql: ${TABLE}.predecessorid ;;
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

  dimension: receiverrooteid {
    type: string
    sql: ${TABLE}.receiverrooteid ;;
  }

  dimension: receiverrootid {
    type: string
    sql: ${TABLE}.receiverrootid ;;
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

  dimension: shipfrom_alias {
    type: string
    sql: ${TABLE}.shipfrom_alias ;;
  }

  dimension: shipfrom_description {
    type: string
    sql: ${TABLE}.shipfrom_description ;;
  }

  dimension: shipfrom_geographiclocation {
    type: string
    sql: ${TABLE}.shipfrom_geographiclocation ;;
  }

  dimension: shipfrom_street {
    type: string
    sql: ${TABLE}.shipfrom_street ;;
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

  dimension: totallinecount {
    type: number
    sql: ${TABLE}.totallinecount ;;
  }

  dimension: trackingnumber {
    type: string
    sql: ${TABLE}.trackingnumber ;;
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
    drill_fields: []
  }
}
