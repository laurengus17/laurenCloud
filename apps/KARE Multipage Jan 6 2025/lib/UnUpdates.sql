SELECT
  ku."projectID",
  ku."date",
  ku."daysSince",
  ku."old",
  ku."new",
  ku."id",
  ku."user",
  ku.acknowledge,
  ku.field,
  kp.project_name,
  em.email,
  em."firstName",
  em."lastName",
  kp.customer_name
FROM
  "kareUpdates" AS ku
  LEFT JOIN "kareProjects" AS kp ON ku."projectID" = kp."id"
  JOIN "PPIemployees" AS em ON ku.user = em.email
WHERE
  (
    (
      {{ formatDataAsArray(adminUserSelect.value).length }} = 0
      AND ku.acknowledge = false
    )
    OR (
      {{ formatDataAsArray(adminUserSelect.value).length }} > 0
      AND ku.acknowledge = false
      AND em.email = {{ adminUserSelect.value }}
    )
  );
