// Reference external variables with curly brackets or using JS variables

const hours = Math.floor( {{querySPratesAPI.rawData.travelUpToMinutes}}/60);
const minutes = {{ querySPratesAPI.rawData.travelUpToMinutes }} % 60;
const hr_mi = hours +' hr ' + minutes + ' min';

return hr_mi;