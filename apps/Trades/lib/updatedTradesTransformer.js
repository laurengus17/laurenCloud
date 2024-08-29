if ({{!bulkRejectFrame.hidden || !bulkRestrictFrame.hidden || !bulkApproveFrame.hidden}}) {
  const tradeIds = {{tradeBeingUpdated.value?.subtrades.map((it) => it.tradeId)}};

  if ({{!bulkRejectFrame.hidden}}) {
    console.log("returning 1", tradeIds, 'REJECTED');
    return {
      tradeIds,
      status: 'REJECTED'
    };
  }

  if ({{!bulkRestrictFrame.hidden}}) {
    console.log("returning 2", tradeIds, 'RESTRICTED');
    return {
      tradeIds,
      status: 'RESTRICTED'
    };
  }

  if ({{!bulkApproveFrame.hidden}}) {
    console.log("returning 3", tradeIds, 'APPROVED');
    return {
      tradeIds,
      status: 'APPROVED'
    };
  }
}

if ({{directApproveTradeStatus.value}}) {
  console.log("returning 4", [{{tradeBeingUpdated.value?.tradeId}}], 'DIRECT');
  return {
    tradeIds: [{{tradeBeingUpdated.value?.tradeId}}],
    status: {{directApproveTradeStatus.value}}
  };
}

const tradeIds = [{{updatedRow.value?.tradeId}}];
const status = {{updatedRow.value.approval}};

if (status !== 'APPROVED') {
  let notes = '';
  if (status === 'RESTRICTED') {
    notes = {{textInput3.value}};
  } else if (status === 'REJECTED') {
    notes = {{textInput4.value}};
  }

  return {
    tradeIds,
    status,
    notes
  };
}

return {
  tradeIds,
  status
};
