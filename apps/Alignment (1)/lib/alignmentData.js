const data = {{getAlignmentSummary.data.exclusions}};

const entities = data.excludedEntities.length >= 0 || data.excludedEntities === null  ? `(${data.excludedEntities?.length ?? 0} entities excluded)` : null;

const clients = data.excludedClients.length >= 0 || data.excludedClients === null ? `(${data.excludedClients?.length ?? 0} clients excluded)` : null;

const brands = data.excludedBrands.length >= 0 || data.excludedBrands === null ? `(${data.excludedBrands?.length ?? 0} brands excluded)` : null;

const sites = data.excludedSites.length >= 0 || data.excludedSites === null ? [`(${data.excludedSites?.length ?? 0} sites excluded)`] : null;

const workOrderTypes = data.excludedWorkOrderTypes.length >= 0 || data.excludedWorkOrderTypes === null ? `(${data.excludedWorkOrderTypes?.length ?? 0} work orders excluded)` : null;

const priorities = data.excludedPriorities?.length >= 0 || data.excludedPriorities === null ? `(${data.excludedPriorities?.length ?? 0} priorities excluded)` : null;

const states = data.excludedStates?.length >= 0 || data.excludedStates === null ? `(${data.excludedStates?.length ?? 0} states excluded)` : null;






if({{!alignmentAdvancedInformationToggle.value}}){


return {
  'Entities': entities,
  'Clients': clients,
  'Brands': brands,
  'Sites': sites,
  'Work Orders': workOrderTypes,
  'Priorities': priorities,
  'States': states
}
} else {
  const entities = data.excludedEntities.length > 0 ? `${data.excludedEntities.map((item) => item.name)}` : null;
  const clients = data.excludedClients.length > 0 ? `${data.excludedClients.map((item) => item.name)}` : null;
const brands = data.excludedBrands.length > 0 ? `${data.excludedBrands.map((item) => item.name)}` : null;
  const sites = data.excludedSites.length > 0 ? data.excludedSites.reduce((acc, curr) => {
    const locations = curr.sites.map((item) => `${curr.businessName} - ${item.name}`);
    return [...acc, ...locations]
  }, []) : null;

  const workOrderTypes = data.excludedWorkOrderTypes.length > 0 ? `${data.excludedWorkOrderTypes.map((item) => item.name)}` : null;

const priorities = data.excludedPriorities?.length > 0 ? `${data.excludedPriorities.map((item) => item.name)}` : null;

const states = data.excludedStates?.length > 0 ? `${data.excludedStates.map((item) => item.name)}` : null;

return {
  'Entities': entities,
  'Clients': clients,
  'Brands': brands,
  'Sites': sites,
  'Work Orders': workOrderTypes,
  'Priorities': priorities,
  'States': states
}  
}

