connection: "luigi_prod"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: bandwidth_allocations_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bandwidth_allocations_default_datagroup
