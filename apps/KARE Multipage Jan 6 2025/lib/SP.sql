select *
from dbo.SPcustomer AS SP 
WHERE
  (
    {{UAvariable.value}} = 'true'

  )
  OR (
    {{UAvariable.value}} = 'false'
    AND SP.Slsm = {{salesVar.value}}
  );