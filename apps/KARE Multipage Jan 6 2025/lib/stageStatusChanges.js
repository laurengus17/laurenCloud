Updates.trigger()
var changes = [];
const current = selected.value
var today = new Date().toLocaleDateString();
if(current.funnel_stage != funnel_stage2.value){  
let cu = current.funnel_stage
let up = funnel_stage2.value
let name = "Funnel Stage"
let latest = [];
let time_difference
let rea = fsReason.value
formatDataAsArray(Updates.data).forEach((currentElement)=>{
if(currentElement.field == name){
latest.push(currentElement.date);
}  
})
if(latest.length > 1){
  latest = latest.reduce(function (pre, cur) {
  return Date.parse(pre) < Date.parse(cur) ? cur : pre;})
time_difference = moment(today).diff(moment(latest),'day')
}
else{time_difference = 0}  
let myObject = {projectID: selected.value.id, field: name, old: cu, new: up, user: current_user.email, daysSince: time_difference, reason:  rea};
changes.push(myObject);
}

if(current.won_lost != status2.value){
let cu = current.won_lost
let up = status2.value
let name = "Status"
let latest = [];
let time_difference
let rea = statusReason.value
formatDataAsArray(Updates.data).forEach((currentElement)=>{
if(currentElement.field == name){
latest.push(currentElement.date);
}  

})
if(latest.length > 1){
  latest = latest.reduce(function (pre, cur) {
  return Date.parse(pre) < Date.parse(cur) ? cur : pre;})
time_difference = moment(today).diff(moment(latest),'day')
}
else{time_difference = 0}  
let myObject = {projectID: selected.value.id, field: name, old: cu, new: up, user: current_user.email, daysSince: time_difference, reason: rea };
changes.push(myObject);
}
return changes