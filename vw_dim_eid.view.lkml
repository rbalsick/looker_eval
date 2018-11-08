view: vw_dim_eid {
  sql_table_name: corex_stage.vw_dim_eid ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: ebo_id {
    type: string
    sql: ${TABLE}.ebo_id ;;
  }

  dimension: mdm_lvl1_org_id {
    type: number
    sql: ${TABLE}.mdm_lvl1_org_id ;;
  }

  dimension: mdm_lvl1_org_name {
    type: string
    sql: ${TABLE}.mdm_lvl1_org_name ;;
  }

  dimension: mdm_lvl2_org_id {
    type: number
    sql: ${TABLE}.mdm_lvl2_org_id ;;
  }

  dimension: mdm_lvl2_org_name {
    type: string
    sql: ${TABLE}.mdm_lvl2_org_name ;;
  }

  dimension: mdm_lvl3_org_id {
    type: number
    sql: ${TABLE}.mdm_lvl3_org_id ;;
  }

  dimension: mdm_lvl3_org_name {
    type: string
    sql: ${TABLE}.mdm_lvl3_org_name ;;
  }

  dimension: mdm_name {
    type: string
    sql: ${TABLE}.mdm_name ;;
  }

  dimension: mdm_path {
    type: string
    sql: ${TABLE}.mdm_path ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: parent_org_name {
    type: string
    sql: ${TABLE}.parent_org_name ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: root_id {
    type: number
    sql: ${TABLE}.root_id ;;
  }

  dimension: root_org_name {
    type: string
    sql: ${TABLE}.root_org_name ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: state_province {
    type: string
    sql: ${TABLE}.state_province ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: tpm_eid {
    type: string
    sql: ${TABLE}.tpm_eid ;;
  }

  dimension: tpm_name {
    type: string
    sql: ${TABLE}.tpm_name ;;
  }

  dimension: tpm_org_id {
    type: string
    sql: ${TABLE}.tpm_org_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      mdm_lvl3_org_name,
      mdm_lvl2_org_name,
      mdm_lvl1_org_name,
      mdm_name,
      root_org_name,
      parent_org_name,
      tpm_name
    ]
  }
}
