# The name of this view in Looker is "Lg Auto Poi Monthly Visits"
view: lg_auto_poi_monthly_visits {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: aditya.lg_auto_poi_monthly_visits ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Location Group" in Explore.

  dimension: location_group {
    type: string
    sql: ${TABLE}.location_group ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_month {
    type: sum
    sql: ${month} ;;
  }

  measure: average_month {
    type: average
    sql: ${month} ;;
  }

  dimension: monthly_visitors {
    type: number
    sql: ${TABLE}.monthly_visitors ;;
  }

  dimension: monthly_visits {
    type: number
    sql: ${TABLE}.monthly_visits ;;
  }

  dimension: poi_hash {
    type: string
    sql: ${TABLE}.poi_hash ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
