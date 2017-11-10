view: bq_forex {
  sql_table_name: `looker-datablocks.exchangerate.forex` ;;

 #######Common Pairs######

  dimension: AUD_USD {
    label: "AUD/USD"
    description: "1 Australian Dollar = X US Dollars"
    group_label: "Common Pairs"
    type: number
    sql: ${TABLE}.AUD_USD ;;
  }

  dimension: CHF_JPY {
    label: "CHF/JPY"
    description: "1 Swiss Franc = X Japanese Yen"
    type: number
    sql: ${TABLE}.CHF_JPY ;;
    group_label: "Common Pairs"
  }

  dimension: EUR_CHF {
    label: "EUR/CHF"
    description: "1 Euro = X Swiss Francs"
    type: number
    sql: ${TABLE}.EUR_CHF ;;
    group_label: "Common Pairs"
  }

  dimension: EUR_GBP {
    label: "EUR/GBP"
    description: "1 Euro = X Great British Pounds"
    type: number
    sql: ${TABLE}.EUR_GBP ;;
    group_label: "Common Pairs"
  }

  dimension: EUR_JPY {
    label: "EUR/JPY"
    description: "1 Euro = X Japanese Yen"
    type: number
    sql: ${TABLE}.EUR_JPY ;;
    group_label: "Common Pairs"
  }

  dimension: EUR_USD {
    label: "EUR/USD"
    description: "1 Euro = X US Dollars"
    type: number
    sql: ${TABLE}.EUR_USD ;;
    group_label: "Common Pairs"
  }

  dimension_group: exchange {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.exchange_date ;;
  }

  dimension: GBP_CHF {
    label: "GBP/CHF"
    description: "1 Great British Pound = X Swiss Francs"
    type: number
    sql: ${TABLE}.GBP_CHF ;;
    group_label: "Common Pairs"
  }

  dimension: GBP_JPY {
    label: "GBP/JPY"
    description: "1 Great British Pound = X Japanese Yen"
    type: number
    sql: ${TABLE}.GBP_JPY ;;
    group_label: "Common Pairs"
  }

  dimension: GBP_USD {
    label: "GBP/USD"
    description: "1 Great British Pound = X US dollars"
    type: number
    sql: ${TABLE}.GBP_USD ;;
    group_label: "Common Pairs"
  }

  dimension: NZD_USD {
    label: "NZD/USD"
    description: "1 New Zealand Dollar = X US dollars"
    type: number
    sql: ${TABLE}.NZD_USD ;;
    group_label: "Common Pairs"
  }

  dimension: USD_CAD {
    label: "USD/CAD"
    description: "1 US dollar = X Canadian dollars"
    type: number
    sql: ${TABLE}.USD_CAD ;;
    group_label: "Common Pairs"
  }

  dimension: USD_CHF {
    label: "USD/CHF"
    description: "1 US dollar = X Swiss Francs"
    type: number
    sql: ${TABLE}.USD_CHF ;;
    group_label: "Common Pairs"
  }

  dimension: USD_JPY {
    label: "USD/JPY"
    description: "1 US dollar = X Japanese Yen"
    type: number
    sql: ${TABLE}.USD_JPY ;;
    group_label: "Common Pairs"
  }

  measure: max {
    type: max
    sql: ${USD_CHF} ;;
}

  measure: count {
    type: count
    drill_fields: []
  }
}
