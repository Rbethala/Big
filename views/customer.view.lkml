view: customer {
  sql_table_name: looker_tpc_h.customer ;;

  dimension: c_acctbal {
    type: number
    sql: ${TABLE}.c_acctbal ;;
  }

  dimension: c_address {
    type: string
    sql: ${TABLE}.c_address ;;
  }

  dimension: c_comment {
    type: string
    sql: ${TABLE}.c_comment ;;
  }

  dimension: c_custkey {
    type: number
    sql: ${TABLE}.c_custkey ;;
  }

  dimension: c_mktsegment {
    type: string
    sql: ${TABLE}.c_mktsegment ;;
  }

  dimension: c_name {
    type: string
    sql: ${TABLE}.c_name ;;
  }

  dimension: c_nationkey {
    type: number
    sql: ${TABLE}.c_nationkey ;;
  }

  dimension: c_phone {
    type: string
    sql: ${TABLE}.c_phone ;;
  }

  measure: count {
    type: count
    drill_fields: [c_name]
  }
}
