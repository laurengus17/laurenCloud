var filter
if((groups.value.name.includes("PPI Sales Manager")) ||(groups.value.name.includes("PPI Admin")) || (groups.value.name.includes("PPI Retool Sales All"))){
filter = true

}
else if(groups.value.name.includes("PPI Sales")){
  filter = false

}

return filter