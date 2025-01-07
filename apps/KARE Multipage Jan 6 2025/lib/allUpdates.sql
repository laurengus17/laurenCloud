select
  KU.*,
  KP."custID",
  KP."customer_name"
from
  "kareUpdates" AS KU
  JOIN "kareProjects" AS KP ON KU."projectID" = KP.id
WHERE
 "custID" = ANY ({{ salesCustPros.data.id }}) AND "date" BETWEEN {{ dateRange1.value.start }} AND {{ dateRange1.value.end }}
order by "date" DESC