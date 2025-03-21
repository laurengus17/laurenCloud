SELECT *
FROM {{ Orders.data }}
WHERE
    CASE
    WHEN {{userAccess.data}} = false THEN
  (
    Slsm = {{salesVar.value}} AND {{ formatDataAsArray(multiselect1.value).length }} > 0
AND CustNum = ANY ({{ multiselect1.value }})
  )
  OR (
    Slsm = {{salesVar.value}} AND {{ formatDataAsArray(multiselect1.value).length }} = 0
  )
    ELSE 
     (
  {{ formatDataAsArray(multiselect1.value).length }} > 0
AND CustNum = ANY ({{ multiselect1.value }})
  )
  OR (
    {{ formatDataAsArray(multiselect1.value).length }} = 0
  )
END;