SELECT * 
FROM ADDRESSES 
WHERE ID IN (
    SELECT ADDRESS_ID 
    FROM PROFILE_RATES_AND_COVERAGES 
    WHERE USER_ID = {{TESTuser.value}}
)
