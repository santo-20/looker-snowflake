view: new_view {
  derived_table: {
    sql: WITH sql_runner_query1 AS (select * from NETFLIX_CUSTOMER_PAYMENTS_AGG_METRICS)
SELECT
  sql_runner_query1."CUSTOMER_ID"  AS "sql_runner_query1.customer_id",
  sql_runner_query1."CUSTOMERGENDER"  AS "sql_runner_query1.customergender",
  sql_runner_query1."CUSTOMERNAME"  AS "sql_runner_query1.customername",
  sql_runner_query1."COUNTRY"  AS "sql_runner_query1.country",
  sql_runner_query1."CREDITCARDNO"  AS "sql_runner_query1.creditcardno"
FROM sql_runner_query1

GROUP BY 1,2,3,4,5
ORDER BY 1
LIMIT 500
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sql_runner_query1_customer_id {
    type: string
    sql: ${TABLE}."sql_runner_query1.customer_id" ;;
  }

  dimension: sql_runner_query1_customergender {
    type: string
    sql: ${TABLE}."sql_runner_query1.customergender" ;;
  }

  dimension: sql_runner_query1_customername {
    type: string
    sql: ${TABLE}."sql_runner_query1.customername" ;;
  }

  dimension: sql_runner_query1_country {
    type: string
    sql: ${TABLE}."sql_runner_query1.country" ;;
  }

  dimension: sql_runner_query1_creditcardno {
    type: number
    sql: ${TABLE}."sql_runner_query1.creditcardno" ;;
  }

  set: detail {
    fields: [sql_runner_query1_customer_id, sql_runner_query1_customergender, sql_runner_query1_customername, sql_runner_query1_country, sql_runner_query1_creditcardno]
  }
}
