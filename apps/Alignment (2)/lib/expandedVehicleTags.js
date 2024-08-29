const vehicles = vehiclesAndUniformsData?.value?.vehicles ? vehiclesAndUniformsData?.value?.vehicles : [];
const tagNames = new Set();

if(vehicles.length !== 0) {
    vehicles?.forEach(vehicle => {
    Object.values(vehicle)?.forEach(photo => {
      photo?.tags?.forEach(tag => {
        tagNames.add(tag.name);
      });
    });
  });
}


  return Array.from(tagNames);