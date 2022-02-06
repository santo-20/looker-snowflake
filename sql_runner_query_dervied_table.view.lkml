view: sql_runner_query_dervied_table {
  derived_table: {
    sql: select * from PUBLIC.NETFLIX_CUSTOMER_PAYMENTS_BY_TYPE_NISH
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

  dimension: credit_card {
    type: number
    sql: ${TABLE}."CREDIT_CARD" ;;
  }

  dimension: debit_card {
    type: number
    sql: ${TABLE}."DEBIT_CARD" ;;
  }

  dimension: voucher {
    type: number
    sql: ${TABLE}."VOUCHER" ;;
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
      credit_card,
      debit_card,
      voucher
    ]
  }
}
