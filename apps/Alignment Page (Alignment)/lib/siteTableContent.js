const content = exclusionsTableContent.value.excludedSites;

const rearrangedData = {
  sites: []
};

content.forEach(business => {
  business.sites.forEach(site => {
    rearrangedData.sites.push({
      id: site.id,
      businessName: business.businessName,
      name: site.name
    });
  });
});


return rearrangedData;