let options = [];

if(exclusionSelect.value === 'site' && brandSiteSelect.value) {
  options = getSiteOptions.data?.content;
}

return options;
