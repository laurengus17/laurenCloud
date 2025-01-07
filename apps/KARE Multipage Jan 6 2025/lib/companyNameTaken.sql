SELECT N.Name, C2.sls_id, C2.id FROM {{ companyNameT?.value }} AS N

LEFT JOIN {{ formatDataAsArray(Cust2?.data) }} as C2
ON N.Name = C2.account_name
order by N.Name