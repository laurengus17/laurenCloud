SELECT
  *
FROM
  "stratProfile"
WHERE
  CASE
    WHEN {{ tabbedContainer2?.currentViewKey }} = 'Universal' THEN "customerID" = {{ dataTable2.selectedRow?.custID }}
    WHEN {{ tabbedContainer2?.currentViewKey }} = 'In' THEN "customerID" = {{ dataTable3.selectedRow?.custID }}
    WHEN {{ tabbedContainer2?.currentViewKey }} = 'Best Few' THEN "customerID" = {{ dataTable4.selectedRow?.custID }}
    WHEN {{ tabbedContainer2?.currentViewKey }} = 'Close' THEN "customerID" = {{ dataTable5.selectedRow?.custID }}
    WHEN {{ tabbedContainer2?.currentViewKey }} = 'Lost' THEN "customerID" = {{ dataTable7.selectedRow?.custID }}
    WHEN {{ tabbedContainer2?.currentViewKey }} = 'Won' THEN "customerID" = {{ dataTable6.selectedRow?.custID }}
  END