function transformHours(hours) {
  const formatOptions = { hour: 'numeric', minute: 'numeric', hour12: true };
  const transformedHours = {};
  // Iterate through day objects ('monday', 'tuesday', etc)
  for (const dayName in hours) {
  const day = hours[dayName];
  const startTime = day.startTime;
  const endTime = day.endTime;

  let formattedStart = startTime;
  let formattedEnd = endTime;

  if (formattedStart) {
    // Create a Date object to format times correctly
    const startDate = new Date(2000, 0, 1, startTime.split(":")[0], startTime.split(":")[1], 0, 0);  
    formattedStart = startDate.toLocaleTimeString(undefined, formatOptions);
  }

  if (formattedEnd) {
    // Create a Date object to format times correctly
    const endDate = new Date(2000, 0, 1, endTime.split(":")[0], endTime.split(":")[1], 0, 0);  
    formattedEnd = endDate.toLocaleTimeString(undefined, formatOptions);
  }

  transformedHours[dayName] = { ...day, startTime: formattedStart, endTime: formattedEnd }
  }

  return transformedHours;
}

const bizInfo = {{ { ...getSPBusinessInfo.data } }};

const transformedWorkHours = transformHours(bizInfo.businessHours);
const transformedAfterHours = transformHours(bizInfo.afterHours);

return { ...bizInfo, businessHours: transformedWorkHours, afterHours: transformedAfterHours }