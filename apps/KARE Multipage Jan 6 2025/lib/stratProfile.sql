SELECT *
FROM "stratProfile"
WHERE
"customerID" = {{ table2.selectedRow?.id }}