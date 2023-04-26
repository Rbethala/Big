connection: "denodo8"

# include all the views
include: "/views/**/*.view"

datagroup: denodo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: denodo_default_datagroup

explore: all_types {}

explore: customer {}

explore: lineitem {}

explore: nation {}

explore: order_items {
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: part {}

explore: partsupp {}

explore: region {}

explore: supplier {}

explore: users {}
