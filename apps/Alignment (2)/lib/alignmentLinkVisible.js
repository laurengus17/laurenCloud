const data = {{getAlignmentSummary.data.exclusions}};

const entities = (!data.excludedEntities 
|| data.excludedEntities.length === 0) ? 0 : 1;

const clients = (!data.excludedClients 
|| data.excludedClients.length === 0) ? 0 : 1;

const brands = (!data.excludedBrands 
|| data.excludedBrands.length === 0) ? 0 : 1;

const sites = (!data.excludedSites 
|| data.excludedSites.length === 0) ? 0 : 1;

const workOrderTypes = (!data.excludedWorkOrderTypes 
|| data.excludedWorkOrderTypes.length === 0) ? 0 : 1;

const priorities = (!data.excludedPriorities 
|| data.excludedPriorities.length === 0) ? 0 : 1;

const states = (!data.excludedStates 
|| data.excludedStates.length === 0) ? 0 : 1;


return !entities && !clients && !brands && !sites && !workOrderTypes && !priorities && !states;
