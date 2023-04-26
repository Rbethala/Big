view: partsupp {
  sql_table_name: looker_tpc_h.partsupp ;;

  dimension: ps_availqty {
    type: number
    sql: ${TABLE}.ps_availqty ;;
  }

  dimension: ps_comment {
    type: string
    sql: ${TABLE}.ps_comment ;;
  }

  dimension: ps_partkey {
    type: number
    sql: ${TABLE}.ps_partkey ;;
  }

  dimension: ps_suppkey {
    type: number
    sql: ${TABLE}.ps_suppkey ;;
  }

  dimension: ps_supplycost {
    type: number
    sql: ${TABLE}.ps_supplycost ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
