connection: "atlan_snowflake"

datagroup: atlan_snowflake_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: atlan_snowflake_project_default_datagroup
