SELECT *
FROM {{ CS.data }} as CS
OUTER JOIN {{ SP.data }} AS SP ON CS.CustNum = SP.CustNum