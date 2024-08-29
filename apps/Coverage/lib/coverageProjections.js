if({{select2.value === 'workOrders'}}){
  return {{alignmentCoverage.data.projectionsDto.workOrderProjectionsDto}}
}

if({{select2.value === 'clients'}}){
  return {{alignmentCoverage.data.projectionsDto.clientProjectionsDto}}
}

if({{select2.value === 'potentialEarnings'}}){
  return {{alignmentCoverage.data.projectionsDto.potentialEarningProjectionsDto}}
}