SELECT
  *
FROM
  {{ salescustpros.data }}
WHERE
  CASE
    WHEN {{userAccess.data}} = false THEN
   (SLS_ID = {{salesVar.value}})
    ELSE(true)
  END;