//Checks if all the containers are hidden, then we show the fallback container

if ({{entitiesContainer.hidden && clientsContainer.hidden && brandsContainer.hidden && workOrdersContainer.hidden && sitesContainer.hidden && statesContainer.hidden && prioritiesContainer.hidden }}) {
  return true;
} else {
  return false;
}
