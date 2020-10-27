view: derived_view {
  derived_table: {
    sql: select * from NETFLIX_CUSTOMER_PAYMENTS_MASTER;
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

  dimension: payment_type {
    type: string
    sql: ${TABLE}."PAYMENT_TYPE" ;;
  }

  dimension: payment_value {
    type: number
    sql: ${TABLE}."PAYMENT_VALUE" ;;
  }

  set: detail {
    fields: [customer_id, payment_type, payment_value]
  }
}
