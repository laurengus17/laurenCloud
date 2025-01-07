select *
from dbo.customer AS CS
WHERE
  (
    {{UAvariable.value}} = 'true'
  )
  OR (
    {{UAvariable.value}} = 'false'
    AND CS.Slsm = {{salesVar.value}}
  );