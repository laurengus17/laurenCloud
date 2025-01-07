SELECT
  *
FROM
  salescustpros
WHERE
  CASE
    WHEN {{UAvariable.value}} = false THEN
   (sls_id = {{salesVar.value}} AND status = 'Active')
    ELSE(
     {{formatDataAsArray(multiselect3.value).length}} = 0 AND status = 'Active'

        )
      OR (
      {{formatDataAsArray(multiselect3.value).length}} > 0 AND
      Sls_id = ANY ({{ multiselect3.value }}) AND status = 'Active'
          )
  END;
