view: region {
  sql_table_name: looker_tpc_h.region ;;

  dimension: r_comment {
    type: string
    sql: ${TABLE}.r_comment ;;
  }

  dimension: r_name {
    type: string
    sql: ${TABLE}.r_name ;;
  }

  dimension: r_regionkey {
    type: number
    sql: ${TABLE}.r_regionkey ;;
  }

  measure: count {
    type: count
    drill_fields: [r_name]
  }
}
