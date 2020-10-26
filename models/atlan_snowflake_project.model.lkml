connection: "atlan_snowflake"
label: "1) Label From New Connection"


include: "/*.view" # include all the views
# include: "/*.dashboard" # include all the dashboards

datagroup: atlan_snowflake_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: atlan_snowflake_project_default_datagroup
