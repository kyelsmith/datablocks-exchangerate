view: bq_forex_real {
  sql_table_name: `looker-datablocks.exchangerate.forex_real` ;;

  dimension: aud {
    type: number
    sql: ${TABLE}.AUD ;;
  }

  dimension: base_currency {
    type: string
    sql: ${TABLE}.base_currency ;;
  }

  dimension: bgn {
    type: number
    sql: ${TABLE}.BGN ;;
  }

  dimension: brl {
    type: number
    sql: ${TABLE}.BRL ;;
  }

  dimension: cad {
    type: number
    sql: ${TABLE}.CAD ;;
  }

  dimension: chf {
    type: number
    sql: ${TABLE}.CHF ;;
  }

  dimension: cny {
    type: number
    sql: ${TABLE}.CNY ;;
  }

  dimension: czk {
    type: number
    sql: ${TABLE}.CZK ;;
  }

  dimension: dkk {
    type: number
    sql: ${TABLE}.DKK ;;
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

  dimension: gbp {
    type: number
    sql: ${TABLE}.GBP ;;
  }

  dimension: hkd {
    type: number
    sql: ${TABLE}.HKD ;;
  }

  dimension: hrk {
    type: number
    sql: ${TABLE}.HRK ;;
  }

  dimension: huf {
    type: number
    sql: ${TABLE}.HUF ;;
  }

  dimension: idr {
    type: number
    sql: ${TABLE}.IDR ;;
  }

  dimension: ils {
    type: number
    sql: ${TABLE}.ILS ;;
  }

  dimension: inr {
    type: number
    sql: ${TABLE}.INR ;;
  }

  dimension: jpy {
    type: number
    sql: ${TABLE}.JPY ;;
  }

  dimension: krw {
    type: number
    sql: ${TABLE}.KRW ;;
  }

  dimension: mxn {
    type: number
    sql: ${TABLE}.MXN ;;
  }

  dimension: myr {
    type: number
    sql: ${TABLE}.MYR ;;
  }

  dimension: nok {
    type: number
    sql: ${TABLE}.NOK ;;
  }

  dimension: nzd {
    type: number
    sql: ${TABLE}.NZD ;;
  }

  dimension: php {
    type: number
    sql: ${TABLE}.PHP ;;
  }

  dimension: pln {
    type: number
    sql: ${TABLE}.PLN ;;
  }

  dimension: ron {
    type: number
    sql: ${TABLE}.RON ;;
  }

  dimension: rub {
    type: number
    sql: ${TABLE}.RUB ;;
  }

  dimension: sek {
    type: number
    sql: ${TABLE}.SEK ;;
  }

  dimension: sgd {
    type: number
    sql: ${TABLE}.SGD ;;
  }

  dimension: thb {
    type: number
    sql: ${TABLE}.THB ;;
  }

  dimension: try {
    type: number
    sql: ${TABLE}.TRY ;;
  }

  dimension: usd {
    type: number
    sql: ${TABLE}.USD ;;
  }

  dimension: zar {
    type: number
    sql: ${TABLE}.ZAR ;;
  }

  #######Common Pairs######

  dimension: AUD_USD {
    label: "AUD/USD"
    description: "1 Australian Dollar = X US Dollars"
    type: number
    sql: 1/(${aud}*(1/${usd})) ;;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: CHF_JPY {
    label: "CHF/JPY"
    description: "1 Swiss Franc = X Japanese Yen"
    type: number
    sql: 1/(${chf}*(1/${jpy})) ;;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: EUR_CHF {
    label: "EUR/CHF"
    description: "1 Euro = X Swiss Francs"
    type: number
    sql: ${chf} ;;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: EUR_GBP {
    label: "EUR/GBP"
    description: "1 Euro = X Great British Pounds"
    type: number
    sql: ${gbp};;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: EUR_JPY {
    label: "EUR/JPY"
    description: "1 Euro = X Japanese Yen"
    type: number
    sql: ${jpy} ;;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: EUR_USD {
    label: "EUR/USD"
    description: "1 Euro = X US Dollars"
    type: number
    sql: ${usd} ;;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: GBP_CHF {
    label: "GBP/CHF"
    description: "1 Great British Pound = X Swiss Francs"
    type: number
    sql: ${chf}*(1/${gbp}) ;;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: GBP_JPY {
    label: "GBP/JPY"
    description: "1 Great British Pound = X Japanese Yen"
    type: number
    sql: ${jpy}*(1/${gbp}) ;;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: GBP_USD {
    label: "GBP/USD"
    description: "1 Great British Pound = X US dollars"
    type: number
    sql: ${usd}*(1/${gbp}) ;;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: NZD_USD {
    label: "NZD/USD"
    description: "1 New Zealand Dollar = X US dollars"
    type: number
    sql: 1/(${nzd}*(1/${usd})) ;;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: USD_CAD {
    label: "USD/CAD"
    description: "1 US dollar = X Canadian dollars"
    type: number
    sql: ${cad} *(1/${usd});;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: USD_CHF {
    label: "USD/CHF"
    description: "1 US dollar = X Swiss Francs"
    type: number
    sql: ${chf} *(1/${usd});;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  dimension: USD_JPY {
    label: "USD/JPY"
    description: "1 US dollar = X Japanese Yen"
    type: number
    sql: ${jpy} *(1/${usd});;
    value_format_name: decimal_4
    group_label: "Common Pairs"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
