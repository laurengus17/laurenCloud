const tradeRateType = {{statusUpdateFromTable.value}};

if(tradeRateType === 'ORIGINAL'){
const updatedStatus = {{uneditedRatesTable.changesetArray}}

return {
    tradeRateType: 'ORIGINAL',
  updatedStatuses: updatedStatus
}
} 

if(tradeRateType === 'PARTNERSHIP') {
  const updatedStatus = {{partnershipsTable.changesetArray}}

return {
  tradeRateType,
  updatedStatuses: updatedStatus
}
}

if(tradeRateType === 'FLAT'){
    const updatedStatus = {{perJobFlatRatesTable.changesetArray}}

return {
  tradeRateType,
  updatedStatuses: updatedStatus
}
}

if(tradeRateType === 'EDITED') {
      const updatedStatus = {{hourlyTripRatesTable.changesetArray}}

return {
  tradeRateType,
  updatedStatuses: updatedStatus
}
}

