const rates = {{getAlignmentSummary.data.alignmentRates.rates}};

//LOGIC FOR WARNING MESSAGE
const subtrades = rates.reduce((acc, curr) => {
  return [...acc, ...curr.subtradeRates]
}, [])
const subtradesHasUneditedRates = subtrades.some((it) => it.originalRate?.approvalStatus)
//  console.log("SUB", subtrades)
if(subtradesHasUneditedRates) {
  return true;
}

return false;