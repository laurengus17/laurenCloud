const excludeBy = exclusionSelect.value;

let exclusionIds = [];
let payload = {};

switch (excludeBy) {
  case "entity":
    exclusionIds = exclusionMultiselect1.value;
    payload = { excludedEntityIds: exclusionIds };
    return JSON.stringify(payload);

  case "client":
    exclusionIds = exclusionMultiselect1.value;
    payload = { excludedClientIds: exclusionIds };
    return JSON.stringify(payload);

  case "brand":
    exclusionIds = exclusionMultiselect1.value;
    payload = { excludedBrandIds: exclusionIds };
    return JSON.stringify(payload);

  case "workOrderType":
    exclusionIds = exclusionMultiselect1.value;
    payload = { excludedWorkOrderTypeIds: exclusionIds };
    return JSON.stringify(payload);

  case "site":
    const selectedSites = exclusionMultiselect2.value;
    const exclusionId = brandSiteSelect.value;
    payload = {
      excludedSites: [
        {
          id: exclusionId,
          sites: selectedSites.map((site) => ({ id: site })),
        },
      ],
    };
    return JSON.stringify(payload);

  case "state":
    exclusionIds = exclusionMultiselect1.value;
    payload = { excludedStateIds: exclusionIds };
    return JSON.stringify(payload);

  case "priority":
    exclusionIds = exclusionMultiselect1.value;
    payload = { excludedPriorityIds: exclusionIds };
    return JSON.stringify(payload);
}
