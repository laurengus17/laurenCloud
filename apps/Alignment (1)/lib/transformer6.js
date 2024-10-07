const getTablesList = () => {
  const list = [];

   if({{mockDataOriginalRates.value.length > 0}}) {
    list.push('Original Rates')
  }

  if({{mockDataEditedRates.value.length > 0}}) {
    list.push('Edited Rates')
  }

 

  if({{mockDataPartnerships.value.length > 0}}) {
    list.push('Partnerships')
  }

  if({{mockDataFlatRates.value.length > 0}}) {
    list.push('Flat Rates')
  }

return list;
}

return getTablesList()