var result
var bids =  {{ bid.data.ver}}
if(bids.length == 0){
  result = 1
}
else{
  var biggest = Math.max(...bids)
  result  = biggest + 1;
}
return result