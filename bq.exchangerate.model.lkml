connection: "bq-looker-datablocks"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

datagroup: default {
  max_cache_age: "48 hours"
  sql_trigger: select count(*) from `looker-datablocks.exchangerate.forex_real` ;;
}

explore: bq_forex_historical_real {
  persist_with: default
  label: "Exchange Rates"
}
