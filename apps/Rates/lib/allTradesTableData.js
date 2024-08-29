const allRates = {{ ratesData.value.rates.reduce((acc, curr) => {
  const subTrades = curr.subtradeRates.map((item) => ({
    tradeId: item.tradeId,
    tradeName: `${curr.tradeName} - ${item.tradeName}`
  }));

  const trades = [{
    tradeId: curr.tradeId,
    tradeName: curr.tradeName
  }];

  return [...acc, ...subTrades, ...trades];
}, []) }}

return allRates;