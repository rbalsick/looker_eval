view: d_vendor {
  sql_table_name: edw_atomic.d_vendor ;;

  dimension: addr_country {
    type: string
    sql: ${TABLE}.addr_country ;;
  }

  dimension: addr_timezone {
    type: string
    sql: ${TABLE}.addr_timezone ;;
  }

  dimension: address_id {
    type: number
    sql: ${TABLE}.address_id ;;
  }

  dimension: asn_capable {
    type: string
    sql: ${TABLE}.asn_capable ;;
  }

  dimension: bga {
    type: string
    sql: ${TABLE}.bga ;;
  }

  dimension: broad_lane_id {
    type: string
    sql: ${TABLE}.broad_lane_id ;;
  }

  dimension: ccx_deleted_flg {
    type: yesno
    sql: ${TABLE}.ccx_deleted_flg ;;
  }

  dimension: ccx_eid {
    type: string
    sql: ${TABLE}.ccx_eid ;;
  }

  dimension: ccx_flg {
    type: yesno
    sql: ${TABLE}.ccx_flg ;;
  }

  dimension_group: ccx_last_modified {
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
    sql: ${TABLE}.ccx_last_modified_date ;;
  }

  dimension: ccx_match_category {
    type: string
    sql: ${TABLE}.ccx_match_category ;;
  }

  dimension: ccx_org_id {
    type: string
    sql: ${TABLE}.ccx_org_id ;;
  }

  dimension: ccx_vendor_name {
    type: string
    sql: ${TABLE}.ccx_vendor_name ;;
  }

  dimension: ccx_vendor_pool_id {
    type: string
    sql: ${TABLE}.ccx_vendor_pool_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: coid {
    type: string
    sql: ${TABLE}.coid ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: cpm_deleted_flg {
    type: yesno
    sql: ${TABLE}.cpm_deleted_flg ;;
  }

  dimension: cpm_eid {
    type: string
    sql: ${TABLE}.cpm_eid ;;
  }

  dimension: cpm_fein {
    type: string
    sql: ${TABLE}.cpm_fein ;;
  }

  dimension: cpm_flg {
    type: yesno
    sql: ${TABLE}.cpm_flg ;;
  }

  dimension_group: cpm_last_modified {
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
    sql: ${TABLE}.cpm_last_modified_date ;;
  }

  dimension: cpm_match_category {
    type: string
    sql: ${TABLE}.cpm_match_category ;;
  }

  dimension: cpm_org_id {
    type: string
    sql: ${TABLE}.cpm_org_id ;;
  }

  dimension: cpm_vendor_name {
    type: string
    sql: ${TABLE}.cpm_vendor_name ;;
  }

  dimension: csn_capable {
    type: string
    sql: ${TABLE}.csn_capable ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: dea {
    type: string
    sql: ${TABLE}.dea ;;
  }

  dimension: division_id {
    type: string
    sql: ${TABLE}.division_id ;;
  }

  dimension: duns {
    type: string
    sql: ${TABLE}.duns ;;
  }

  dimension: duns_plus_suffix {
    type: string
    sql: ${TABLE}.duns_plus_suffix ;;
  }

  dimension_group: dw_created_ts {
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
    sql: ${TABLE}.dw_created_ts ;;
  }

  dimension: dw_created_user {
    type: string
    sql: ${TABLE}.dw_created_user ;;
  }

  dimension_group: dw_updated_ts {
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
    sql: ${TABLE}.dw_updated_ts ;;
  }

  dimension: dw_updated_user {
    type: string
    sql: ${TABLE}.dw_updated_user ;;
  }

  dimension: ebi_deleted_flg {
    type: yesno
    sql: ${TABLE}.ebi_deleted_flg ;;
  }

  dimension: ebi_eid {
    type: string
    sql: ${TABLE}.ebi_eid ;;
  }

  dimension: ebi_flg {
    type: yesno
    sql: ${TABLE}.ebi_flg ;;
  }

  dimension_group: ebi_last_modified {
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
    sql: ${TABLE}.ebi_last_modified_date ;;
  }

  dimension: ebi_match_category {
    type: string
    sql: ${TABLE}.ebi_match_category ;;
  }

  dimension: ebi_org_id {
    type: number
    sql: ${TABLE}.ebi_org_id ;;
  }

  dimension: ebi_vendor_name {
    type: string
    sql: ${TABLE}.ebi_vendor_name ;;
  }

  dimension: ebo_short_name {
    type: string
    sql: ${TABLE}.ebo_short_name ;;
  }

  dimension: ecri_code {
    type: string
    sql: ${TABLE}.ecri_code ;;
  }

  dimension: eid {
    type: string
    sql: ${TABLE}.eid ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: fax_id {
    type: string
    sql: ${TABLE}.fax_id ;;
  }

  dimension: ghxln {
    type: string
    sql: ${TABLE}.ghxln ;;
  }

  dimension: gln {
    type: string
    sql: ${TABLE}.gln ;;
  }

  dimension: gs {
    type: string
    sql: ${TABLE}.gs ;;
  }

  dimension: hcaisa {
    type: string
    sql: ${TABLE}.hcaisa ;;
  }

  dimension: hin {
    type: string
    sql: ${TABLE}.hin ;;
  }

  dimension: hospitalise_id {
    type: string
    sql: ${TABLE}.hospitalise_id ;;
  }

  dimension: hss_id {
    type: string
    sql: ${TABLE}.hss_id ;;
  }

  dimension: inv_capable {
    type: string
    sql: ${TABLE}.inv_capable ;;
  }

  dimension: is_deleted_flg {
    type: yesno
    sql: ${TABLE}.is_deleted_flg ;;
  }

  dimension: isa {
    type: string
    sql: ${TABLE}.isa ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: mail_box {
    type: string
    sql: ${TABLE}.mail_box ;;
  }

  dimension: match_category {
    type: string
    sql: ${TABLE}.match_category ;;
  }

  dimension: merge_source {
    type: string
    sql: ${TABLE}.merge_source ;;
  }

  dimension: metatrade_flg {
    type: yesno
    sql: ${TABLE}.metatrade_flg ;;
  }

  dimension: mutually_defined {
    type: string
    sql: ${TABLE}.mutually_defined ;;
  }

  dimension: neo_forma_id {
    type: string
    sql: ${TABLE}.neo_forma_id ;;
  }

  dimension: nuv_deleted_flg {
    type: yesno
    sql: ${TABLE}.nuv_deleted_flg ;;
  }

  dimension: nuv_eid {
    type: string
    sql: ${TABLE}.nuv_eid ;;
  }

  dimension: nuv_flg {
    type: yesno
    sql: ${TABLE}.nuv_flg ;;
  }

  dimension_group: nuv_last_modified {
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
    sql: ${TABLE}.nuv_last_modified_date ;;
  }

  dimension: nuv_match_category {
    type: string
    sql: ${TABLE}.nuv_match_category ;;
  }

  dimension: nuv_org_id {
    type: string
    sql: ${TABLE}.nuv_org_id ;;
  }

  dimension: nuv_phone {
    type: string
    sql: ${TABLE}.nuv_phone ;;
  }

  dimension: nuv_vendor_name {
    type: string
    sql: ${TABLE}.nuv_vendor_name ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.owner ;;
  }

  dimension: owner_alt1 {
    type: string
    sql: ${TABLE}.owner_alt1 ;;
  }

  dimension: owner_alt2 {
    type: string
    sql: ${TABLE}.owner_alt2 ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: parent_org_name {
    type: string
    sql: ${TABLE}.parent_org_name ;;
  }

  dimension: paynet_id {
    type: string
    sql: ${TABLE}.paynet_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: premier_id {
    type: string
    sql: ${TABLE}.premier_id ;;
  }

  dimension: psuite_eboid {
    type: string
    sql: ${TABLE}.psuite_eboid ;;
  }

  dimension: rac_id {
    type: string
    sql: ${TABLE}.rac_id ;;
  }

  dimension: root_id {
    type: number
    sql: ${TABLE}.root_id ;;
  }

  dimension: root_org_name {
    type: string
    sql: ${TABLE}.root_org_name ;;
  }

  dimension: scac {
    type: string
    sql: ${TABLE}.scac ;;
  }

  dimension: self_identifier {
    type: string
    sql: ${TABLE}.self_identifier ;;
  }

  dimension: sqn {
    type: string
    sql: ${TABLE}.sqn ;;
  }

  dimension: src_ccx_isactive {
    type: number
    sql: ${TABLE}.src_ccx_isactive ;;
  }

  dimension: src_cpm_entity_status {
    type: string
    sql: ${TABLE}.src_cpm_entity_status ;;
  }

  dimension: src_nuv_org_status {
    type: string
    sql: ${TABLE}.src_nuv_org_status ;;
  }

  dimension: src_tpm_status {
    type: string
    sql: ${TABLE}.src_tpm_status ;;
  }

  dimension: src_vision_status_code {
    type: string
    sql: ${TABLE}.src_vision_status_code ;;
  }

  dimension: state_province {
    type: string
    sql: ${TABLE}.state_province ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: street_1 {
    type: string
    sql: ${TABLE}.street_1 ;;
  }

  dimension: street_2 {
    type: string
    sql: ${TABLE}.street_2 ;;
  }

  dimension: street_3 {
    type: string
    sql: ${TABLE}.street_3 ;;
  }

  dimension: supplier_defined {
    type: string
    sql: ${TABLE}.supplier_defined ;;
  }

  dimension: system_org_flg {
    type: yesno
    sql: ${TABLE}.system_org_flg ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: tp_id {
    type: string
    sql: ${TABLE}.tp_id ;;
  }

  dimension: tpm_deleted_flg {
    type: yesno
    sql: ${TABLE}.tpm_deleted_flg ;;
  }

  dimension: tpm_eid {
    type: string
    sql: ${TABLE}.tpm_eid ;;
  }

  dimension: tpm_flg {
    type: yesno
    sql: ${TABLE}.tpm_flg ;;
  }

  dimension_group: tpm_last_modified {
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
    sql: ${TABLE}.tpm_last_modified_date ;;
  }

  dimension: tpm_match_category {
    type: string
    sql: ${TABLE}.tpm_match_category ;;
  }

  dimension: tpm_org_id {
    type: string
    sql: ${TABLE}.tpm_org_id ;;
  }

  dimension: tpm_vendor_name {
    type: string
    sql: ${TABLE}.tpm_vendor_name ;;
  }

  dimension: ucn {
    type: string
    sql: ${TABLE}.ucn ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: vendor_country {
    type: string
    sql: ${TABLE}.vendor_country ;;
  }

  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendor_id ;;
  }

  dimension: vendor_key {
    type: number
    sql: ${TABLE}.vendor_key ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.vendor_name ;;
  }

  dimension: vendor_sanction_status {
    type: string
    sql: ${TABLE}.vendor_sanction_status ;;
  }

  dimension: vision_vendor_oid {
    type: string
    sql: ${TABLE}.vision_vendor_oid ;;
  }

  dimension_group: vision_vendor_updated {
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
    sql: ${TABLE}.vision_vendor_updated_on ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      cpm_vendor_name,
      ebi_vendor_name,
      nuv_vendor_name,
      tpm_vendor_name,
      ccx_vendor_name,
      ebo_short_name,
      parent_org_name,
      root_org_name,
      vendor_name
    ]
  }
}
