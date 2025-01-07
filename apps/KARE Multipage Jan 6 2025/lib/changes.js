// Trigger updates
Updates.trigger();

// Store changes
var changes = [];
const current = selected.value;
var today = new Date().toLocaleDateString();

// List of fields to check for changes
const fields = [
  { field: "Kare Group", currentValue: current.kare_group, newValue: kare_group2.value },
  { field: "Sales ID", currentValue: current.sales_id, newValue: salesID2.value },
  { field: "Project Name", currentValue: current.project_name, newValue: project_name2.value },
  { field: "Territory", currentValue: current.territory, newValue: territory2.value },
  { field: "Project Start Year", currentValue: current.project_start_year, newValue: project_start_year2.value },
  { field: "Active Project Year", currentValue: current.active_project_year, newValue: active_project_year2.value },
  { field: "Market", currentValue: current.market, newValue: market2.value },
  { field: "Main Product Target", currentValue: current.main_product_target, newValue: mainProductT2.value },
  { field: "Current Customer Volume in Lbs", currentValue: current.current_customer_volume_in_l_bs, newValue: cCustomerVlbs2.value },
  { field: "Targeted Additional Annual Lbs", currentValue: current.targeted_additional_annual_lbs, newValue: targAdditionalAlbs2.value },
  { field: "Targeted Printed Imp Units", currentValue: current.taraget_additional_printed_impressions_units, newValue: targAdditionalprintImpUnits2.value },
  { field: "Target Additional Annual Bags", currentValue: current.target_additional_annual_bags, newValue: targAdditionalABags2.value },
  { field: "Targeted Additional Landscape Bags", currentValue: current.targeted_additional_landscape_bags, newValue: targAdditionalLandscapebags2.value },
  { field: "Project Description", currentValue: current.project_desc, newValue: project_desc2.value }
];

// Helper function to get the most recent update date for a field
function getMostRecentUpdateDate(field) {
  let latest = [];
  formatDataAsArray(Updates.data).forEach((currentElement) => {
    if (currentElement.field === field) {
      latest.push(currentElement.date);
    }
  });

  if (latest.length > 1) {
    // Get the most recent date
    latest = latest.reduce((pre, cur) => Date.parse(pre) < Date.parse(cur) ? cur : pre);
    return moment(latest);
  }
  return moment(today); // If no updates found, return today's date
}

// Function to handle the change logic for any field
function handleFieldChange(field, currentValue, newValue) {
  if (currentValue !== newValue) {
    let latestUpdateDate = getMostRecentUpdateDate(field);
    let timeDifference = moment(today).diff(latestUpdateDate, 'days');

    // Prepare the change object
    let change = {
      projectID: selected.value.id,
      field: field,
      old: currentValue,
      new: newValue,
      user: current_user.email,
      daysSince: timeDifference > 0 ? timeDifference : 0 // Ensure no negative days
    };
    
    // Add the change to the changes array
    changes.push(change);
  }
}

// Iterate through fields and handle changes
fields.forEach(item => {
  handleFieldChange(item.field, item.currentValue, item.newValue);
});

return changes;
