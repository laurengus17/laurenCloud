const data = {{getAlignmentSummary.data}};

if ({{!applicantInformationAdvancedToggle.value}}) {
  return {
    "Full Name":
      data.applicantInformation.firstname +
      " " +
      data.applicantInformation.lastname,
    "Contact Numbers": data.applicantInformation.phones.map((i) => i.value),
    Emails: data.applicantInformation.emails.map((i) => i.value),
  };
} else {
  const spType =
    data.applicantInformation.spKey === "independent_technician"
      ? "Independent Technician"
      : data.applicantInformation.spKey === "vendor"
      ? "Vendor"
      : data.applicantInformation.spKey === "owner_operator"
      ? "Owner Operator"
      : "";

  return {
    "Full Name":
      data.applicantInformation.firstname +
      " " +
      data.applicantInformation.lastname,
    "Contact Numbers": data.applicantInformation.phones.map((i) => i.value),
    Emails: data.applicantInformation.emails.map((i) => i.value),
    "SP Type": spType,
  };
}
