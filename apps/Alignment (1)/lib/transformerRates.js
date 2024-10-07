// Reference external variables with curly brackets or using JS variables
const tripFeeDollars = {{querySPratesAPI.rawData.tripFeeCents }} / 100;
const hourlyFeeDollars = {{querySPratesAPI.rawData.hourlyFeeCents}} / 100;


return [hourlyFeeDollars, tripFeeDollars];