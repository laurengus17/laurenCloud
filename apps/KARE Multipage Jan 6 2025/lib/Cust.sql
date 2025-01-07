SELECT
  *
FROM
  salescustpros
WHERE
  CASE
    WHEN {{UAvariable?.value}} = false THEN
   (sls_id = {{salesVar?.value}} AND ty_ue = 'C')
    ELSE(ty_ue = 'C')
  END;