- dashboard: combofromlook
  title: Combofromlook
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: comparerisk
    title: Outcome Comparision by Risk Group
    model: dclifepoint2
    explore: lp_demo
    type: marketplace_viz_spider::spider-marketplace
    fields: [lp_demo.average_readmission_post_procedure, lp_demo.opioid_prescription_rate,
      lp_demo.mri_use_rate, lp_demo.patient_risk_score_group, lp_demo.average_adherence_to_testing,
      lp_demo.rate_of_complications]
    fill_fields: [lp_demo.patient_risk_score_group]
    sorts: [lp_demo.patient_risk_score_group]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    levels: 3
    label_factor: 85
    label_fine: 6
    rounded_strokes: true
    independent: true
    labelScale: true
    negatives: false
    wrap_width: 100
    opacity_area: 15
    dot_radius: 30
    opacity_circles: 22
    backgroundColor: "#CDCDCD"
    axisColor: "#CDCDCD"
    stroke_width: 15
    glow: 2
    axis_label_font: 12
    axis_scale_font: 12
    legend_font: 12
    legend_padding: 20
    legend_side: left
    "< 0.2_color": "#4A80BC"
    ">= 0.2 and < 0.4_color": "#615894"
    ">= 0.4 and < 0.6_color": "#F0C733"
    ">= 0.6 and < 0.8_color": "#D13452"
    ">= 0.8 and < 1.0_color": "#E48522"
    ">= 1.0_color": "#B977A9"
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    value_label_padding: 60
    target_source: second
    target_label_type: both
    spinner_type: needle
    gauge_fill_type: progress
    viz_trellis_by: row
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    series_types: {}
    defaults_version: 0
  - name: raidalGauge
    title:
    model: dclifepoint2
    explore: lp_demo
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [lp_demo.care_metric, national_averages.care_metric_national, lp_demo.region]
    filters:
      patient_comorbidity_facts.comorbidity: Cancer
      lp_demo.procedure_month: 2021/01/01 to 2022/01/05
      lp_demo.care_metric_picker: average^_rate^_of^_complications
    sorts: [lp_demo.care_metric desc]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels:
      national_averages.care_metric_national: National Average
      lp_demo.care_metric: Selected group rate
    show_view_names: false
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: 0
    range_max:
    value_label_type: dboth
    value_label_font: 5
    value_label_padding: 45
    target_source: second
    target_label_type: both
    target_label_font: 3
    target_label_override: National
    label_font_size: 3
    spinner_type: needle
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: row
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.11
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      lp_national_averages.lp_national_average_readmission_post_procedure: "#5B6771"
      national_averages.care_metric_national: "#0B2949"
    reference_lines: []
    defaults_version: 0
  - name: boxplot1
    title:
    model: dclifepoint2
    explore: lp_demo
    type: looker_boxplot
    fields: [lp_demo.region, lp_facility_averages.readmit_min, lp_facility_averages.readmit_first_quartile,
      lp_facility_averages.readmit_median, lp_facility_averages.readmit_third_quartile,
      lp_facility_averages.readmit_max]
    sorts: [lp_demo.region]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
  - name: facilityLocation
    title: Facility Location
    model: dclifepoint2
    explore: lp_demo
    type: looker_map
    fields: [lp_demo.facility_location, lp_demo.facility_dup, lp_demo.facility, lp_demo.percent_unplanned_readmit]
    filters:
      lp_demo.measure_param: readmit^_rate
    sorts: [lp_demo.percent_unplanned_readmit desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: icon
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    hidden_fields: [lp_demo.facility_dup]
