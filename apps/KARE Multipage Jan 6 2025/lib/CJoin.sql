SELECT *
FROM {{ CS3.data }} as CS
OUTER JOIN {{ SP3.data }} AS SP ON CS.CustNum = SP.CustNum
ORDER BY Name