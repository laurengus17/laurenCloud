//first chec if exclusion select has a value
if(exclusionSelect.value) {
  //then check if its other than site and check multiselect1 
  if(exclusionSelect.value !== 'site' && exclusionMultiselect1.selectedItems.length){
      return false;
  } else if(exclusionSelect.value === 'site' && brandSiteSelect.value && exclusionMultiselect2.selectedItems.length) {
    return false;
  } else {
    return true;
  }
} else {
  return true;
}