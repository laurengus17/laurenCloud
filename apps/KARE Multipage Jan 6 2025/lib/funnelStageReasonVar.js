var out
out = {{ formatDataAsArray(UnUpdates.data).filter((update) => {
  return update.field == 'Reason for Funnel Change'}) }}

return out.sort((a, b) => b.id - a.id)