const teamMembers = vehiclesAndUniformsData?.value?.teamMembers ? vehiclesAndUniformsData?.value?.teamMembers : [];
let tagCounter = 0;

if (teamMembers?.length !== 0) {
  teamMembers?.forEach((member) => {
    tagCounter +=
      member.headshotPhoto?.tags?.length + member.waistUpPhoto?.tags?.length;
  });
}

return tagCounter ? tagCounter : 0;
