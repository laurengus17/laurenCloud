const data = {{getAlignmentSummary.data.alignmentCoverage.adjustedTravelUpToMinutes || getAlignmentSummary.data.alignmentCoverage.travelUpToMinutes}};

const hours = Math.ceil(data/60);
const minutes = Math.ceil(data%60);

return {
  "Total Drivable Time": `${hours} hour ${minutes} minutes`
}