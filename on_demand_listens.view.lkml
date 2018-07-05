view: on_demand_listens {
  sql_table_name: public.on_demand_listens ;;

  dimension: on_demand_listen_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.on_demand_listen_id ;;
  }

  dimension: audio_filepath {
    type: string
    sql: ${TABLE}.audio_filepath ;;
  }

  dimension: browser_id {
    type: string
    sql: ${TABLE}.browser_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: file_size_bytes {
    type: number
    sql: ${TABLE}.file_size_bytes ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: ip_useragent_hash {
    type: string
    sql: ${TABLE}.ip_useragent_hash ;;
  }

  dimension_group: listen_timestamp {
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
    sql: ${TABLE}.listen_timestamp ;;
  }

  dimension: os_id {
    type: string
    sql: ${TABLE}.os_id ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: raw_agent {
    type: string
    sql: ${TABLE}.raw_agent ;;
  }

  dimension: raw_ref {
    type: string
    sql: ${TABLE}.raw_ref ;;
  }

  dimension: raw_request {
    type: string
    sql: ${TABLE}.raw_request ;;
  }

  dimension: referrer_id {
    type: string
    sql: ${TABLE}.referrer_id ;;
  }

  dimension: seconds_downloaded {
    type: number
    sql: ${TABLE}.seconds_downloaded ;;
  }

  dimension: show_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.show_id ;;
  }

  dimension: status_code {
    type: number
    sql: ${TABLE}.status_code ;;
  }

  dimension: story_id {
    type: number
    sql: ${TABLE}.story_id ;;
  }

  dimension: subdivision {
    type: string
    sql: ${TABLE}.subdivision ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.time_zone ;;
  }

  measure: count {
    type: count
    drill_fields: [on_demand_listen_id, show.show_id, show.show_name]
  }
}
