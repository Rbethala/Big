view: lineitem {
  sql_table_name: looker_tpc_h.lineitem ;;

  dimension: l_comment {
    type: string
    sql: ${TABLE}.l_comment ;;
  }

  dimension_group: l_commitdate {
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
    sql: ${TABLE}.l_commitdate ;;
  }

  dimension: l_discount {
    type: number
    sql: ${TABLE}.l_discount ;;
  }

  dimension: l_extendedprice {
    type: number
    sql: ${TABLE}.l_extendedprice ;;
  }

  dimension: l_linenumber {
    type: number
    sql: ${TABLE}.l_linenumber ;;
  }

  dimension: l_linestatus {
    type: string
    sql: ${TABLE}.l_linestatus ;;
  }

  dimension: l_orderkey {
    type: number
    sql: ${TABLE}.l_orderkey ;;
  }

  dimension: l_partkey {
    type: number
    sql: ${TABLE}.l_partkey ;;
  }

  dimension: l_quantity {
    type: number
    sql: ${TABLE}.l_quantity ;;
  }

  dimension_group: l_receiptdate {
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
    sql: ${TABLE}.l_receiptdate ;;
  }

  dimension: l_returnflag {
    type: string
    sql: ${TABLE}.l_returnflag ;;
  }

  dimension_group: l_shipdate {
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
    sql: ${TABLE}.l_shipdate ;;
  }

  dimension: l_shipinstruct {
    type: string
    sql: ${TABLE}.l_shipinstruct ;;
  }

  dimension: l_shipmode {
    type: string
    sql: ${TABLE}.l_shipmode ;;
  }

  dimension: l_suppkey {
    type: number
    sql: ${TABLE}.l_suppkey ;;
  }

  dimension: l_tax {
    type: number
    sql: ${TABLE}.l_tax ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
