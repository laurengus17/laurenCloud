const teamMembers = vehiclesAndUniformsData?.value?.teamMembers ? vehiclesAndUniformsData?.value?.teamMembers : [];
const tagNames = new Set();

if (teamMembers?.length) {
  teamMembers?.forEach((member) => {
    Object.values(member)?.forEach((photo) => {
      if (photo?.tags) {
        photo.tags?.forEach((tag) => {
          tagNames.add(tag.name);
        });
      }
    });
  });
}

return Array.from(tagNames);
