view: redshit_query_view {
  derived_table: {
    sql: select * from atlan_test_schema.test_table
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  set: detail {
    fields: [id, name]
  }
}
