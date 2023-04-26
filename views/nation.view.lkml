view: nation {
  sql_table_name: looker_tpc_h.nation ;;

  dimension: n_comment {
    type: string
    sql: ${TABLE}.n_comment ;;
  }

  dimension: n_name {
    type: string
    sql: ${TABLE}.n_name ;;
  }

  dimension: n_nationkey {
    type: number
    sql: ${TABLE}.n_nationkey ;;
  }

  dimension: n_regionkey {
    type: number
    sql: ${TABLE}.n_regionkey ;;
  }

  measure: count {
    type: count
    drill_fields: [n_name]
  }
}
