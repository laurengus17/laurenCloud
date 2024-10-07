if (!{{isVehiclesSummaryExpanded.value}}) {
  // Builds the short version of the summary
  const vehicleImagesHtml =
    {{getVehicleTagCount.data}} > 0
      ? "<p>(" + {{getVehicleTagCount.data}} + " tags)</p>"
      : '<p style="color:red;">(No tags)</p>';

  const spImagesHTML =
    {{getSpTagCount.data}} > 0
      ? "<p>(" + {{getSpTagCount.data}} + " tags)</p>"
      : '<p style="color:red;">(No tags)</p>';

  return {
    vehicleImages: vehicleImagesHtml,
    serviceProviderImages: spImagesHTML,
  };
} else {
  let htmlVehicleList = "";
  let htmlSpList = "";

  if ({{expandedVehicleTags?.data?.length}} === 0 || {{!expandedVehicleTags.data}}) {
    htmlVehicleList = '<ul><li style="color:red;">No tags added</li></ul>';
  } else {
    // Builds the expanded version of the summary
    htmlVehicleList = "<ul>";
    {{expandedVehicleTags.data}}?.forEach((name) => {
      htmlVehicleList += `<li>${name}</li>`;
    });
    htmlVehicleList += "</ul>";
  }

  if ({{expandedSpTags?.data?.length}} === 0 || {{!expandedSpTags.data}}) {
    htmlSpList = '<ul><li style="color:red;">No tags added</li></ul>';
  } else {
    htmlSpList = "<ul>";
    {{expandedSpTags.data}}?.forEach((name) => {
      htmlSpList += `<li>${name}</li>`;
    });
    htmlSpList += "</ul>";
  }

  return {
    vehicleImages: htmlVehicleList,
    serviceProviderImages: htmlSpList,
  };
}
