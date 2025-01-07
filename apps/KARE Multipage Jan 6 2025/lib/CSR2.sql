SELECT
  PPI."firstName",
  PPI."lastName",
  concat (
    LEFT (PPI."firstName", 1),
    LEFT (PPI."lastName", 1)
  ) AS "Csr",
  "email"
FROM
  "PPIemployees" AS PPI

WHERE
  PPI."lastName" = 'Bacheller'
  OR PPI."jobTitle" LIKE '%Account Coordinator'
  AND PPI."status" = 'Active' OR PPI."jobTitle" LIKE 'Customer%'