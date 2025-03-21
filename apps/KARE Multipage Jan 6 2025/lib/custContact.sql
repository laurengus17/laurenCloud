SELECT *
FROM "customerContacts"
WHERE
  CASE
    WHEN {{ tabbedContainer3?.currentViewIndex }} = 0 THEN
   ("customerID" = {{ table2.selectedRow?.id }})
    ELSE("customerID" = {{ table3.selectedRow?.id }})
  END;