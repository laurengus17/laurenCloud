select *
from dbo.SPcustomer AS SP 
WHERE
  (
    {{userAccess.data}} = 1

  )
  OR (
    {{userAccess.data}} = 0
    AND SP.Slsm = {{salesVar.value}}
  );