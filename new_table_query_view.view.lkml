view: new_table_query_view {
  derived_table: {
    sql: select * from PUBLIC.NETFLIX_TITLE_MASTER
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: show_id {
    type: number
    sql: ${TABLE}."SHOW_ID" ;;
  }

  dimension: title_type {
    type: string
    sql: ${TABLE}."TITLE_TYPE" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: director {
    type: string
    sql: ${TABLE}."DIRECTOR" ;;
  }

  dimension: title_cast {
    type: string
    sql: ${TABLE}."TITLE_CAST" ;;
  }

  dimension: country_of_origin {
    type: string
    sql: ${TABLE}."COUNTRY_OF_ORIGIN" ;;
  }

  dimension: date_added {
    type: string
    sql: ${TABLE}."DATE_ADDED" ;;
  }

  dimension: release_year {
    type: number
    sql: ${TABLE}."RELEASE_YEAR" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."RATING" ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}."DURATION" ;;
  }

  dimension: listed_in {
    type: string
    sql: ${TABLE}."LISTED_IN" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  set: detail {
    fields: [
      show_id,
      title_type,
      title,
      director,
      title_cast,
      country_of_origin,
      date_added,
      release_year,
      rating,
      duration,
      listed_in,
      description
    ]
  }
}