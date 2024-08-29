const rates = {{getAlignmentSummary.data.alignmentRates.rates}}; 

// LOGIC FOR WARNING MESSAGE
// const subtrades = rates.reduce((acc, curr) => {
//   return [...acc, ...curr.subtradeRates]
// }, [])
// const subtradesHasUneditedRates = subtrades.some((it) => it.originalRate?.approvalStatus)
// console.log("SUB", subtrades)
// if(subtradesHasUneditedRates) {
//   
// }

// LOGIC FOR DATA
if (rates.length === 0) return {};

if ({{!ratesAdvancedInformationToggle.value}}) { 
  const result = {};

  rates.forEach((it) => {
    let allEqual = true;
    const editedRatesCount = [];
    it.subtradeRates.forEach((sbRate) => {
      if (sbRate.editedRate || sbRate.flatRate || sbRate.partnership) {
        allEqual = false;
        editedRatesCount.push(1);
      }
    });

    result[it.tradeName] = allEqual ? `(Equal Rates)` : `(${editedRatesCount.length} different subtrade rates)`;
  });

  return result;
  
} else {

  const result = {};

  rates.forEach((it) => {

    // When the rates have subtrades
    if (it.subtradeRates.length > 0) {
      
      const originalRates = it.subtradeRates.filter((sr) => sr.originalRate);
      const original = originalRates.length > 0 ? originalRates.reduce((acc, curr) => {
        return acc.concat(`&#8226; ${curr.tradeName} <br/>`);
      }, '<b>Unedited:</b> <br/>') : '';

      const flatRates = it.subtradeRates.filter((sr) => sr.flatRate);
      const flat = flatRates.length > 0 ? flatRates.reduce((acc, curr) => {
        return acc.concat(`&#8226; ${curr.tradeName} <br/>`);
      }, '<b>Flat:</b> <br/>') : '';

      const partnershipRates = it.subtradeRates.filter((sr) => sr.partnership);
      const partnership = partnershipRates.length > 0 ? partnershipRates.reduce((acc, curr) => {
        return acc.concat(`&#8226; ${curr.tradeName} <br/>`);
      }, '<b>Partnership:</b> <br/>') : '';

      const editedRates = it.subtradeRates.filter((sr) => sr.editedRate);
      const edited = editedRates.length > 0 ? editedRates.reduce((acc, curr) => {
        return acc.concat(`&#8226; ${curr.tradeName} <br/>`);
      }, '<b>Edited:</b> <br/>') : '';

      //  const allSubtrades = original + '<br/>' + flat + '<br/>' + partnership + '<br/>' + edited;

      const allSubtrades = [original, flat, partnership, edited].filter(Boolean).join('<br/>');
      
      result[it.tradeName] = allSubtrades;
      
    } else {
      const original = it.originalRate ? `&#8226; Unedited Rate ` : '';

      const flat = it.flatRate ? `&#8226; Flat Rate ` : '';

      const partnership = it.partnership ? `&#8226; Partnership ` : '';

      const edited = it.editedRate ? `&#8226; Edited ` : '';

      const allRates = [original, flat, partnership, edited].filter(Boolean).join('<br/>');

      result[it.tradeName] = allRates;
    }
  });

  return result;
}
