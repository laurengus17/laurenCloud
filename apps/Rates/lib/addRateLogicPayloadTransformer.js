const tradeRateType = {{addNewRateLogicSelect.value }};

const updatedRatesObj = {};

if(tradeRateType === 'FLAT'){
  updatedRatesObj.flatRateCents = {{addRateLogicFlatRateCentsInput.value*100}};
  updatedRatesObj.notes = {{addRateLogicFlatRateNotesInput.value}};
} else if(tradeRateType === 'PARTNERSHIP'){
  updatedRatesObj.partnershipPercentage = {{addRateLogicPartnershipPercentInput.value}}
} else if(tradeRateType === 'ORIGINAL') {
  updatedRatesObj.hourlyRateCents = {{addRateLogicHourlyInput.value*100}};
updatedRatesObj.tripFeeCents = {{addRateLogicTripInput.value*100}}
}

const updatedRates = {{addRateLogicRatesTable}}.selectedSourceRows.map((item) => ({
  tradeId: item.tradeId,
  ...updatedRatesObj
}))
                                                              

return {
  tradeRateType,
  updatedRates
}




