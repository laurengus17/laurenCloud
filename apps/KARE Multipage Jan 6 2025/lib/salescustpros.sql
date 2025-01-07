SELECT
  *
FROM
  salescustpros
WHERE
  CASE
    WHEN {{userAccess.data}} = false THEN
   (sls_id = {{salesVar.value}} )
    ELSE(true)
  END;