select Cus.Name, Cus.Csr, Cus.CustNum, C.Csr, C.email, C.firstName, C.lastName
FROM
{{CJoin.data}} AS Cus
JOIN {{CSR2.data}} AS C 
ON Cus.Csr LIKE C.Csr
WHERE
Cus.Name LIKE {{CustomerName.value}}