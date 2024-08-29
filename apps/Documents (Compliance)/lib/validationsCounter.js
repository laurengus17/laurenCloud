// Reference external variables with curly brackets or using JS variables
//  const driversLicense = {{ documents.value.driversLicense }}
const applicantPhotos = {{ documents.value.applicantPhotos }}
const vehiclePhotos = {{ documents.value.vehicles }}
const tradeLicenses = {{ documents.value.tradeLicenses }}
const tradeCertifications= {{ documents.value.tradeCertifications }}
const cois = {{ documents.value.cois }}

//  Drivers license and applicant photos
let licenseAndApplicantCount = 0
//  if(driversLicense.frontPhoto.complianceStatus === 'PENDING') licenseAndApplicantCount++
//  if(driversLicense.backPhoto.complianceStatus === 'PENDING') licenseAndApplicantCount++
if(applicantPhotos.headshot.complianceStatus === 'PENDING') licenseAndApplicantCount++
if(applicantPhotos.waistUp.complianceStatus === 'PENDING') licenseAndApplicantCount++

// Trade licenses 
let tradeLicensesCount = tradeLicenses.filter((license) => license.complianceStatus === 'PENDING').length

// Trade Certification
let tradeCertificationsCount = tradeCertifications.filter((certification) => certification.complianceStatus === 'PENDING').length

// COIs
let coisCount = cois.filter((coi) => coi.complianceStatus === 'PENDING').length

// Vehicles
let vehiclesCount = 0
vehiclePhotos.forEach((vehicle) => {
  if(vehicle.frontPhoto.complianceStatus === 'PENDING') vehiclesCount++
  if(vehicle.backPhoto.complianceStatus === 'PENDING') vehiclesCount++
  if(vehicle.leftPhoto.complianceStatus === 'PENDING') vehiclesCount++
  if(vehicle.rightPhoto.complianceStatus === 'PENDING') vehiclesCount++
  if(vehicle.vinPhoto.complianceStatus === 'PENDING') vehiclesCount++
})

let counts = {
  driversAndApplicantPhotos: licenseAndApplicantCount,
  vehicles: vehiclesCount,
  tradeLicenses: tradeLicensesCount,
  tradeCertifications: tradeCertificationsCount,
  cois: coisCount,
}

return counts