connection: "mathorgsandbox"

# include all the views
include: "//DClifepoint/views/**/*.view.lkml"
include: "//DClifepoint/Explore/**/*.explore"
include: "/views/**/*.view"
# include: "//DClifepoint/dashboards/**/*.dashboard"
include: "/dashboards/**/*.dashboard"


datagroup: lifepointdc2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lifepointdc2_default_datagroup
