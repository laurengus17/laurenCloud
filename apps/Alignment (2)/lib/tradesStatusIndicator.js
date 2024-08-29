const data = {{getAlignmentSummary.data.tradesAndEquipment.trades}};

//  let flag = false;

const unapprovedTrade = data.some((item) => item.approval.status === 'PENDING');

const unapprovedSubtrades = data.some((item) => {
  if(item.subtrades.length > 0) {
   return item.subtrades.some((it) => it.approval.status === 'PENDING')
  }
  
})

return unapprovedTrade || unapprovedSubtrades
