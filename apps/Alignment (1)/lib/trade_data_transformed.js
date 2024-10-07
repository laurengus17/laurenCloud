// Reference external variables with curly brackets or using JS variables
const data = {{ formatDataAsArray(sp_profile_trades.data) }};
const optionsData = {{ formatDataAsArray(sp_profile_trade_options.data) }};

const trades = [ ...new Set( data.map((row)=> row.TRADE_ID ))];

const tradesObj = trades.map((tid)=>{
 const tradeRow =  data.find((row)=>row.TRADE_ID == tid);
 const subTrades = data.filter(row=>row.TRADE_ID == tid).map((row)=>{ 
  
 const options = optionsData.filter((optRow)=> {
   
   return optRow.PROFILE_TRADE_ID == row.PROFILE_TRADE_ID});
   
const lists = [ ...new Set(options.map((o)=>o.LIST))];
   
   const tradeOptions = lists.map((l)=>{ return { name: l, options: options.filter((o)=>o.LIST==l)}  });
   
   return { profile_trade_id: row.PROFILE_TRADE_ID,  sub_id: row.SUBTRADE_ID, sub_name: row.SUBTRADE_NAME, lists: tradeOptions  }  });
 
 return {priority: tradeRow.PRIORITY,trade_id: tradeRow.TRADE_ID, trade_name: tradeRow.TRADE_NAME, subtrades: subTrades }  
})

return tradesObj;