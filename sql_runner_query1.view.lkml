view: sql_runner_query1 {
  derived_table: {
    sql: select * from NETFLIX_CUSTOMER_PAYMENTS_AGG_METRICS;
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: customername {
    type: string
    sql: ${TABLE}."CUSTOMERNAME" ;;
  }

  dimension: customergender {
    type: string
    sql: ${TABLE}."CUSTOMERGENDER" ;;
  }

  dimension: joining_date {
    type: date
    sql: ${TABLE}."JOINING_DATE" ;;
  }

  dimension: user_age {
    type: number
    sql: ${TABLE}."USER_AGE" ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: creditcardno {
    type: number
    sql: ${TABLE}."CREDITCARDNO" ;;
  }

  dimension: total_value {
    type: number
    sql: ${TABLE}."TOTAL_VALUE" ;;
  }

  set: detail {
    fields: [
      customer_id,
      customername,
      customergender,
      joining_date,
      user_age,
      country,
      city,
      state,
      region,
      creditcardno,
      total_value
    ]
  }
}
