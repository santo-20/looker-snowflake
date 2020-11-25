connection: "atlan_snowflake"
connection: "redshit"
label: "1) Label From New Connection"


include: "/*.view" # include all the views
include: "/views/*.view" # include all the dashboards

datagroup: atlan_snowflake_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}
datagroup: redshit_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: atlan_snowflake_project_default_datagroup


explore: orders_with_share_of_wallet_application {
  label: "(5) Share of Wallet Analysis"
  view_name: sql_runner_query1
}

explore: new_view {
  label: "new view"
  view_name: sql_runner_query1
}


explore: index_all_interleaved {
  label: "index_all_interleaved"
  view_name: index_all_interleaved
}


explore: test_view {
  label: "test view"
  view_name: derived_view
}

explore: new_table_query_view {
  label: "new table view"
  view_name: new_table_query_view
}

explore: redshit_query_view{
  label: "redshift table view"
  view_name: redshit_query_view
}
