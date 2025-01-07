var result = [];
if({{switch4.value == true}}){
  result.push({"two": "Only Quoted"})
}
else{
   result.push({"two": "Existing Item"})
}
if({{switch3.value == true}}){
  result.push({"one": "New Quote"})
}
else{
   result.push({"one": "Quoted"})
}
return result