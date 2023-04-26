view: supplier {
  sql_table_name: looker_tpc_h.supplier ;;

  dimension: s_acctbal {
    type: number
    sql: ${TABLE}.s_acctbal ;;
  }

  dimension: s_address {
    type: string
    sql: ${TABLE}.s_address ;;
  }

  dimension: s_comment {
    type: string
    sql: ${TABLE}.s_comment ;;
  }

  dimension: s_name {
    type: string
    sql: ${TABLE}.s_name ;;
  }

  dimension: s_nationkey {
    type: number
    sql: ${TABLE}.s_nationkey ;;
  }

  dimension: s_phone {
    type: string
    sql: ${TABLE}.s_phone ;;
  }

  dimension: s_suppkey {
    type: number
    sql: ${TABLE}.s_suppkey ;;
  }

  measure: count {
    type: count
    drill_fields: [s_name]
  }
}
