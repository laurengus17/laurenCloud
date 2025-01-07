SELECT
  *
FROM
  contacts
WHERE
    CASE
      WHEN {{ tabbedContainer2.currentViewKey }} = 'Universal' THEN "ID" = {{ dataTable2.selectedRow.custID }}
      WHEN {{ tabbedContainer2.currentViewKey }} = 'In' THEN "ID" = {{ dataTable3.selectedRow.custID }}
      WHEN {{ tabbedContainer2.currentViewKey }} = 'Best Few' THEN "ID" = {{ dataTable4.selectedRow.custID }}
      WHEN {{ tabbedContainer2.currentViewKey }} = 'Close' THEN "ID" = {{ dataTable5.selectedRow.custID }}
      WHEN {{ tabbedContainer2.currentViewKey }} = 'Lost' THEN "ID" = {{ dataTable7.selectedRow.custID }}
    END