view: rfm_analysis {
  derived_table: {
    sql: SELECT
        *,
        CASE WHEN rfm_recency >= 4 AND rfm_frequency >= 4 AND rfm_monetary >= 4
          THEN 1
        WHEN rfm_recency >= 2 AND rfm_frequency >= 3 AND rfm_monetary >= 3
          THEN 2
        WHEN rfm_recency >= 2 AND rfm_frequency >= 3 AND rfm_monetary < 3
          THEN 2
        WHEN rfm_recency >= 3 AND rfm_frequency BETWEEN 1 AND 3 AND rfm_monetary BETWEEN 1 AND 3
          THEN 3
        WHEN rfm_recency >= 4 AND rfm_frequency BETWEEN 0 AND 1 AND rfm_monetary BETWEEN 0 AND 1
          THEN 4
        WHEN rfm_recency BETWEEN 3 AND 4 AND rfm_frequency BETWEEN 0 AND 1 AND rfm_monetary BETWEEN 0 AND 1
          THEN 5
        WHEN rfm_recency BETWEEN 2 AND 3 AND rfm_frequency BETWEEN 2 AND 3 AND rfm_monetary BETWEEN 2 AND 3
          THEN 6
        WHEN rfm_recency BETWEEN 2 AND 3 AND rfm_frequency BETWEEN 0 AND 2 AND rfm_monetary BETWEEN 0 AND 2
          THEN 7
        WHEN rfm_recency BETWEEN 0 AND 2 AND rfm_frequency BETWEEN 2 AND 5 AND rfm_monetary BETWEEN 2 AND 5
          THEN 8
        WHEN rfm_recency BETWEEN 0 AND 1 AND rfm_frequency BETWEEN 4 AND 5 AND rfm_monetary BETWEEN 4 AND 5
          THEN 9
        WHEN rfm_recency BETWEEN 1 AND 2 AND rfm_frequency BETWEEN 1 AND 2 AND rfm_monetary BETWEEN 1 AND 2
          THEN 10
        WHEN rfm_recency <= 2 AND rfm_frequency <= 2 AND rfm_monetary <= 2
          THEN 11
        ELSE 12 END AS designation_rank,
        CASE WHEN rfm_recency >= 4 AND rfm_frequency >= 4 AND rfm_monetary >= 4
          THEN 'Champion'
        WHEN rfm_recency >= 2 AND rfm_frequency >= 3 AND rfm_monetary >= 3
          THEN 'Loyal Customers'
        WHEN rfm_recency >= 2 AND rfm_frequency >= 3 AND rfm_monetary < 3
          THEN 'Loyal Customers'
        WHEN rfm_recency >= 3 AND rfm_frequency BETWEEN 1 AND 3 AND rfm_monetary BETWEEN 1 AND 3
          THEN 'Potential Loyal'
        WHEN rfm_recency >= 4 AND rfm_frequency BETWEEN 0 AND 1 AND rfm_monetary BETWEEN 0 AND 1
          THEN 'Recent Customers'
        WHEN rfm_recency BETWEEN 3 AND 4 AND rfm_frequency BETWEEN 0 AND 1 AND rfm_monetary BETWEEN 0 AND 1
          THEN 'Promising Customers'
        WHEN rfm_recency BETWEEN 2 AND 3 AND rfm_frequency BETWEEN 2 AND 3 AND rfm_monetary BETWEEN 2 AND 3
          THEN 'Needs Attention'
        WHEN rfm_recency BETWEEN 2 AND 3 AND rfm_frequency BETWEEN 0 AND 2 AND rfm_monetary BETWEEN 0 AND 2
          THEN 'About To Churn'
        WHEN rfm_recency BETWEEN 0 AND 2 AND rfm_frequency BETWEEN 2 AND 5 AND rfm_monetary BETWEEN 2 AND 5
          THEN 'At Risk'
        WHEN rfm_recency BETWEEN 0 AND 1 AND rfm_frequency BETWEEN 4 AND 5 AND rfm_monetary BETWEEN 4 AND 5
          THEN 'Can’t Lose Them'
        WHEN rfm_recency BETWEEN 1 AND 2 AND rfm_frequency BETWEEN 1 AND 2 AND rfm_monetary BETWEEN 1 AND 2
          THEN 'Hibernating'
        WHEN rfm_recency <= 2 AND rfm_frequency <= 2 AND rfm_monetary <= 2
          THEN 'Lost'
        ELSE 'Not Designated' END AS designation
      FROM (
             SELECT
               receiverrooteid,
               senderrooteid,
               last_order_date,
               avg_amount,
               count_order,
               line_count,
               po_amount,
               ntile(5)
               OVER (
                 PARTITION BY receiverrooteid
                 ORDER BY last_order_date) AS rfm_recency,
               ntile(5)
               OVER (
                 PARTITION BY receiverrooteid
                 ORDER BY count_order)     AS rfm_frequency,
               ntile(5)
               OVER (
                 PARTITION BY receiverrooteid
                 ORDER BY avg_amount)      AS rfm_monetary
             FROM (
                    SELECT
                      po.receiverrooteid,
                      po.senderrooteid,
                      MAX(po.receivedfrompartnerts) AS last_order_date,
                      COUNT(DISTINCT po.doc_id)     AS count_order,
                      AVG(po.totalamount)           AS avg_amount,
                      SUM(po.totallinescount)       AS line_count,
                      SUM(po.totalamount)           AS po_amount
                    FROM corex_stage.bd_po_header po
                      --JOIN edw_atomic.d_provider p ON po.senderrooteid = p.eid
                      --JOIN edw_atomic.d_vendor v ON po.receiverrooteid = v.eid
                    WHERE 1 = 1
                          AND po.receivedfrompartnerts LIKE '2018%'
                          AND {% condition supplier_root_eid %} po.receiverrooteid {% endcondition %}
                    GROUP BY po.senderrooteid,
                      po.receiverrooteid
                  ) x
           ) y
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: supplier_root_eid {
    type: string
    sql: ${TABLE}.receiverrooteid ;;
  }

  dimension: provider_root_eid {
    type: string
    sql: ${TABLE}.senderrooteid ;;
  }

  dimension_group: last_order_date {
    type: time
    sql: ${TABLE}.last_order_date ;;
  }

  dimension: avg_amount {
    type: number
    sql: ${TABLE}.avg_amount ;;
  }

  dimension: po_count {
    type: number
    sql: ${TABLE}.count_order ;;
  }

  dimension: line_count {
    type: number
    sql: ${TABLE}.line_count ;;
  }

  measure: po_amount {
    type: sum
    value_format_name: usd
    sql: ${TABLE}.po_amount ;;
  }

  dimension: rfm_recency {
    type: number
    sql: ${TABLE}.rfm_recency ;;
  }

  dimension: rfm_frequency {
    type: number
    sql: ${TABLE}.rfm_frequency ;;
  }

  dimension: rfm_monetary {
    type: number
    sql: ${TABLE}.rfm_monetary ;;
  }

  dimension: designation_rank {
    type: number
    sql: ${TABLE}.designation_rank ;;
  }

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }

  set: detail {
    fields: [
      #vendor_name,
      provider_root_eid,
      po_amount,
      avg_amount,
      po_count,
      line_count,
      last_order_date_time,
      #rfm_recency,
      #rfm_frequency,
      #rfm_monetary,
      #designation_rank,
      #designation
    ]
  }
}
