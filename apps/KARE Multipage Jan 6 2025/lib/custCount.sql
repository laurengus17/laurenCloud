SELECT *
FROM {{ _.countBy(  kare.data.custID)}} as Results
