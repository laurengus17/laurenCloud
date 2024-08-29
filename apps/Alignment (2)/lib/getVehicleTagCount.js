const vehicles = vehiclesAndUniformsData?.value?.vehicles
  ? vehiclesAndUniformsData?.value?.vehicles
  : [];
let tagCounter = 0;

if (vehicles.length !== 0) {
  vehicles?.forEach((vehicle) => {
    tagCounter +=
      vehicle.backPhoto?.tags?.length +
      vehicle.frontPhoto?.tags?.length +
      vehicle.leftPhoto?.tags?.length +
      vehicle.rightPhoto?.tags?.length +
      vehicle.vinPhoto?.tags?.length;
  });
}

return tagCounter;
