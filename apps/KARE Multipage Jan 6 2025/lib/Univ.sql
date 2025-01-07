SELECT
  *
FROM
  salescustpros
WHERE
  CASE
    WHEN {{UAvariable?.value}} = false THEN
   (sls_id = {{salesVar?.value}} AND ty_ue = 'U')
    ELSE(ty_ue = 'U')
  END;