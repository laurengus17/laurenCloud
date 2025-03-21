var bags = {{ bagSpecs.data }}
var roll = {{ rollstockSpec.data }}
var lam = {{ lamSpec.data }}
var result

if(bags.customer.length != 0){
result = bags
}
if(roll.customer.length != 0){
result = roll
}
if(lam.customer.length != 0){
result = lam
}
return formatDataAsArray(result)