view: show {
  sql_table_name: public.show ;;

  dimension: show_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.show_id ;;
  }

  dimension: show_name {
    type: string
    sql: ${TABLE}.show_name ;;
  }

  dimension: show_owner {
    type: string
    sql: ${TABLE}.show_owner ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_date ;;
  }

  measure: count {
    type: count
    drill_fields: [show_id, show_name, on_demand_listens.count]
  }
}
