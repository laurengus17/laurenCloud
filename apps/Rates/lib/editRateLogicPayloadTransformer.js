const isBulkEdit = {{!bulkEditRates.hidden}};


if(isBulkEdit) {
  //CREATING PAYLOAD FOR BULK EDIT
const uneditedRatesModalTableSelectedRowIds = {{ uneditedRatesModalTable.selectedSourceRows.map((item) => item.tradeId) }};
const partnershipsModalTableSelectedRowIds = {{ partnershipsModalTable.selectedSourceRows.map((item) => item.tradeId) }};
const perJobFlatRatesModalTableSelectedRowIds = {{ perJobFlatRatesModalTable.selectedSourceRows.map((item) => item.tradeId) }};
const hourlyTripRatesModalTableSelectedRowIds = {{ hourlyTripRatesModalTable.selectedSourceRows.map((item) => item.tradeId) }};


const payload = {
  tradeRateType: {{bulkEditType.value}},
}

let rates = [];

if({{bulkEditType.value === 'ORIGINAL'}}){
  uneditedRatesModalTableSelectedRowIds.forEach((id) => {
    rates.push({
      tradeId: id,
      hourlyRateCents: {{hourlyRateModal.value*100}},
      tripFeeCents: {{tripFeeModal.value*100}},
        addAfterHours: {{afterHoursSwitch.value}},
      afterHoursFeeCents: {{hourlyRateAfterHours.value*100}},
      afterHoursTripFeeCents: {{tripFeeAfterHours.value*100}}
    })
  })
} else if({{bulkEditType.value === 'PARTNERSHIP'}}){
  partnershipsModalTableSelectedRowIds.forEach((id) => {
    rates.push({
      tradeId: id,
      partnershipPercentage: {{percentageModal.value}},
    })
  })
} else if({{bulkEditType.value === 'FLAT'}}) {
  perJobFlatRatesModalTableSelectedRowIds.forEach((id) => {
    rates.push({
      tradeId: id,
      flatRateCents: {{flatRateModal.value*100}},
      notes: {{noteModal.value}}
    })
  })
} else if({{bulkEditType.value === 'EDITED'}}) {
  hourlyTripRatesModalTableSelectedRowIds.forEach((id) => {
    rates.push({
      tradeId: id,
      hourlyRateCents: {{hourlyModal.value*100}},
addAfterHours: {{afterHoursSwitch.value}},
      tripFeeCents: {{tripModal.value*100}},
afterHoursFeeCents: {{hourlyRateAfterHours.value*100}},
 afterHoursTripFeeCents: {{tripFeeAfterHours.value*100}}
    })
  })
}

payload.updatedRates = rates;

return payload;
} else {

//CREATING PAYLOAD FOR SINGLE EDIT
const tradeRateType = {{singleEditType.value}};
const updatedRate = {};

if(tradeRateType === 'ORIGINAL'){
  updatedRate.tradeId = {{rateBeingEditedData.value.tradeId}};
    updatedRate.hourlyRateCents = {{editRateHourlyInput.value*100}};
  updatedRate.tripFeeCents = {{editRateTripInput.value*100}};
updatedRate.addAfterHours = {{afterHoursSwitch2.value}};
updatedRate.afterHoursFeeCents = {{editHourlyRateAfterHours.value*100}};
      updatedRate.afterHoursTripFeeCents = {{editTripFeeAfterHours.value*100}}
} else if(tradeRateType === 'PARTNERSHIP'){
  updatedRate.tradeId = {{rateBeingEditedData.value.tradeId}};
  updatedRate.partnershipPercentage = {{editRatePercentageInput.value}}

} else if(tradeRateType === 'FLAT') {
  updatedRate.tradeId = {{rateBeingEditedData.value.tradeId}};
  updatedRate.flatRateCents = {{editFlatRateInput.value*100}};
      updatedRate.notes = {{editFlatRateNoteInput.value}};
} else if(tradeRateType === 'EDITED') {
  updatedRate.tradeId = {{rateBeingEditedData.value.tradeId}};
    updatedRate.hourlyRateCents = {{editRateEditedHourlyInput.value*100}};
  updatedRate.tripFeeCents = {{editRateEditedTripFeeInput.value*100}};
updatedRate.addAfterHours = {{afterHoursSwitch4.value}},
updatedRate.afterHoursFeeCents = {{currency3.value*100}};
      updatedRate.afterHoursTripFeeCents = {{currency4.value*100}}
}

  return {
    tradeRateType,
    updatedRates: [updatedRate]
  }
}
