view: part {
  sql_table_name: looker_tpc_h.part ;;

  dimension: p_brand {
    type: string
    sql: ${TABLE}.p_brand ;;
  }

  dimension: p_comment {
    type: string
    sql: ${TABLE}.p_comment ;;
  }

  dimension: p_container {
    type: string
    sql: ${TABLE}.p_container ;;
  }

  dimension: p_mfgr {
    type: string
    sql: ${TABLE}.p_mfgr ;;
  }

  dimension: p_name {
    type: string
    sql: ${TABLE}.p_name ;;
  }

  dimension: p_partkey {
    type: number
    sql: ${TABLE}.p_partkey ;;
  }

  dimension: p_retailprice {
    type: number
    sql: ${TABLE}.p_retailprice ;;
  }

  dimension: p_size {
    type: number
    sql: ${TABLE}.p_size ;;
  }

  dimension: p_type {
    type: string
    sql: ${TABLE}.p_type ;;
  }

  measure: count {
    type: count
    drill_fields: [p_name]
  }
}
