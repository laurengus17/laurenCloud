const excludeBy = exclusionSelect.value;

let options = [];

switch (excludeBy) {
  case "entity":
    options = getEntityOptions.data?.content;
    break;
  case "client":
    options = getClientOptions.data?.content;
    break;
  case "brand":
  case "site":
    options = getBrandOptions.data?.content;
    break;
  case "workOrderType":
    options = getWorkOrderTypesOptions.data?.content;
    break;
  case "state":
    options = getStateOptions.data?.content;
    break;
  case "priority":
    options = getPriorityOptions.data?.content;
    break;
  default:
    return ["some", "options"];
}

return options;
