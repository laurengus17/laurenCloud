return [{rates: 'Initial Rates', ...{{ratesData.value.projections.initialRates[projectionTypeSelect.selectedItem.value]}} },
  {rates: 'Pending Rates', ...{{ratesData.value.projections.pendingRates[projectionTypeSelect.selectedItem.value]}} },
  {rates: 'Negotiated Rates', ...{{ratesData.value.projections.negotiatedRates[projectionTypeSelect.selectedItem.value]}} }]
  