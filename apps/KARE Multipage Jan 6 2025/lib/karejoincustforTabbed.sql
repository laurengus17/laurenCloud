SELECT
  karep.*, cust.state, cust.segment, cust.sls_id
FROM
  {{ formatDataAsArray(kare.data) }} as karep
JOIN
{{ formatDataAsArray(salesCustPros.data) }} AS cust ON karep.custID = cust.id
WHERE
CASE
    WHEN {{ tabbedContainer2.currentViewKey == "Universal"}} THEN
    (
  karep.funnel_stage == "Universal" AND karep.won_lost != "Won" AND karep.won_lost != "Lost"
    )
  WHEN {{ tabbedContainer2.currentViewKey == "In"}} THEN
  ( 
    karep.funnel_stage == "In" AND karep.won_lost != "Won" AND karep.won_lost != "Lost"
    )
    WHEN {{ tabbedContainer2.currentViewKey == "Best Few"}} THEN
  ( 
    karep.funnel_stage == "Best Few" AND karep.won_lost != "Won" AND karep.won_lost != "Lost"
    )
    WHEN {{ tabbedContainer2.currentViewKey == "Close"}} THEN
  ( 
    karep.funnel_stage == "Close" AND karep.won_lost != "Won" AND karep.won_lost != "Lost"
    )
      WHEN {{ tabbedContainer2.currentViewKey == "Won"}} THEN
  ( 
    karep.won_lost == "Won"
    )
      WHEN {{ tabbedContainer2.currentViewKey == "Lost"}} THEN
  ( 
    karep.won_lost == "Lost"
    )
END;