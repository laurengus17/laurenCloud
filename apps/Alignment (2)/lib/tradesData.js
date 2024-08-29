const data = {{getAlignmentSummary.data.tradesAndEquipment.trades}};

if({{!tradesAdvancedInformationToggle.value}}){
  const result = {};

  data.forEach((item) => {
    const hasSubtrades = item.subtrades.length > 0;
    const unApprovedSubtrades = item.subtrades?.filter((it) => it.approval.status === 'PENDING');

    let value;

    if(hasSubtrades) {
      if(unApprovedSubtrades?.length > 0){
        value = `(${unApprovedSubtrades.length} unapproved subtrades)`
      } else {
        value = `(+${item.subtrades.length} subtrades)`
      }
    } else {
      if(item.approval.status === 'PENDING'){
          value = `(unapproved)`
      } else {
        value = `(approved)`
      }
    }
    
    result[item.tradeName] = [value];
  })

  return result
} else {
  const result = {};

  data.forEach((item) => {
    const hasSubtrades = item.subtrades.length > 0;
    const unApprovedSubtrades = item.subtrades?.filter((it) => it.approval.status === 'PENDING');

    let value;

    if(hasSubtrades) {
      //  if(unApprovedSubtrades?.length > 0){
      //    value = `(${unApprovedSubtrades.length} unapproved subtrades)`
      //  } else {
      //    value = `(+${item.subtrades.length} subtrades)`
      //  }

      value = item.subtrades.map((it) => `${it.tradeName} - ${it.approval.status}`)
      
    } else {
      if(item.approval.status === 'PENDING'){
          value = [`(unapproved)`]
      } else {
        value = [`(approved)`]
      }
    }
    
    result[item.tradeName] = value;
  })

  return result
}

