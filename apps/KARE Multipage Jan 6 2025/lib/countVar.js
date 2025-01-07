var Count = [];
var Open = 0
var Won = 0
var lost = 0
var Uni = 0
var In = 0
var BF = 0
var CL = 0
var PLVu = 0
var PLVi = 0
var PLVb = 0
var PLVc = 0
var PLV = 0
var PLVn = 0
var PIu = 0
var PIi = 0
var PIb = 0
var PIc = 0
var PI = 0
var PIn = 0
var Bu = 0
var Bi = 0
var Bb = 0
var Bc = 0
var B = 0
var Bn = 0
var LBu = 0
var LBi = 0
var LBb = 0
var LBc = 0
var LB = 0
var LBn = 0
var Un = WForm.data.weight[4]
var I = WForm.data.weight[2]
var BFC = WForm.data.weight[0]
var C = WForm.data.weight[1]
var NA = WForm.data.weight[3]
var wonT = 0
DisplayData.data.forEach(function(rec){

if(rec.won_lost == "Open"){Open += 1}
if(rec.won_lost == "Won"){Won += 1; wonT += rec.targeted_additional_annual_lbs} 
if(rec.won_lost == "Lost"){lost += 1}
if(rec.funnel_stage == "Universal" && rec.won_lost == "Open"){Uni += 1; PLVu += Un * rec.targeted_additional_annual_lbs;PIu += Un * rec.taraget_additional_printed_impressions_units;Bu += Un * rec.target_additional_annual_bags; LBu += Un * rec.targeted_additional_landscape_bags}
if(rec.funnel_stage == "In" && rec.won_lost == "Open"){In += 1; PLVi +=  I * rec.targeted_additional_annual_lbs; PIi +=  I * rec.taraget_additional_printed_impressions_units; Bi +=  I * rec.target_additional_annual_bags; LBi +=  I * rec.targeted_additional_landscape_bags}
if(rec.funnel_stage == "Best Few" && rec.won_lost == "Open"){BF += 1; PLVb +=  BFC * rec.targeted_additional_annual_lbs; PIb +=  BFC * rec.taraget_additional_printed_impressions_units; Bb +=  BFC * rec.target_additional_annual_bags; LBb +=  BFC * rec.targeted_additional_landscape_bags}
if(rec.funnel_stage == "Close" && rec.won_lost == "Open"){CL += 1; PLVc +=  C * rec.targeted_additional_annual_lbs; PIc +=  C * rec.taraget_additional_printed_impressions_units; Bc +=  C * rec.target_additional_annual_bags; LBc +=  C * rec.targeted_additional_landscape_bags}
if(rec.funnel_stage == "N/A" && rec.won_lost =="Open"){PLVn +=  NA * rec.targeted_additional_annual_lbs; PIn +=  NA * rec.taraget_additional_printed_impressions_units; Bn +=  NA * rec.target_additional_annual_bags; LBn +=  NA * rec.targeted_additional_landscape_bags}
});

PLV = PLVu+PLVi+PLVc+PLVb+PLVn
PI = PIu+PIi+PIc+PIb+PIn
B = Bu+Bi+Bc+Bb+Bn
LB = LBu+LBi+LBc+LBb+LBn
let myObject = {Open: Open, Won: Won, Lost: lost, Uni: Uni, In: In, BF: BF, CL: CL, PLV: PLV, PI: PI, B: B, LB: LB, wonT };
Count.push(myObject) 
return Count