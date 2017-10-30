include: "*.view.lkml"

datagroup: default {
  max_cache_age: "48 hours"
  sql_trigger: select count(*) from exchangerate.forex_real ;;
}

explore: forex_historical_real {
  persist_with: default
  label: "Exchange Rates"
}