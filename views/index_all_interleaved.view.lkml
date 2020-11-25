view: index_all_interleaved {
  sql_table_name: public.index_all_interleaved ;;

  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }

  dimension: cluster {
    type: string
    sql: ${TABLE}.cluster ;;
  }

  dimension: crequest {
    type: number
    sql: ${TABLE}.crequest ;;
  }

  dimension: gforce_id {
    type: string
    sql: ${TABLE}.gforce_id ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: nsales {
    type: number
    sql: ${TABLE}.nsales ;;
  }

  dimension: nstripes {
    type: number
    sql: ${TABLE}.nstripes ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: seller_id {
    type: string
    sql: ${TABLE}.seller_id ;;
  }

  dimension: seller_name {
    type: string
    sql: ${TABLE}.seller_name ;;
  }

  dimension: shop_id {
    type: string
    sql: ${TABLE}.shop_id ;;
  }

  dimension: spread {
    type: number
    sql: ${TABLE}.spread ;;
  }

  dimension: tc_receipt {
    type: number
    sql: ${TABLE}.tc_receipt ;;
  }

  dimension: tsales {
    type: number
    sql: ${TABLE}.tsales ;;
  }

  dimension: uc_catalog {
    type: number
    sql: ${TABLE}.uc_catalog ;;
  }

  measure: count {
    type: count
    drill_fields: [seller_name]
  }
}
