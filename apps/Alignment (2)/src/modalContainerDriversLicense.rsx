<Container
  id="modalContainerDriversLicense"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="normal"
  padding="12px"
  showBody={true}
  style={{ ordered: [{ border: "rgba(224, 224, 224, 0)" }] }}
>
  <View
    id="621b3"
    label="Drivers License - Front"
    viewKey="DriversLicenseFront"
  >
    <Text
      id="text78"
      marginType="normal"
      value="#### Drivers License - Front"
      verticalAlign="center"
    />
    <Image
      id="DriversLicenseFrontLg_Image"
      horizontalAlign="center"
      marginType="normal"
      src="{{documentsAdmin.data.driversLicense.frontPhoto.getUrl}}"
    />
  </View>
  <View
    id="55358"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Drivers License - Back"
    viewKey="DriversLicenseBack"
  >
    <Text
      id="text77"
      marginType="normal"
      value="#### Drivers License - Back"
      verticalAlign="center"
    />
    <Image
      id="DriversLicenseBackLg_Image"
      horizontalAlign="center"
      marginType="normal"
      src="{{documentsAdmin.data.driversLicense.backPhoto.getUrl}}"
    />
  </View>
  <View
    id="4fee3"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Applicant - Waist Up"
    viewKey="ApplicantWaistUp"
  >
    <Text
      id="text79"
      marginType="normal"
      value="#### Applicant - Waist Up"
      verticalAlign="center"
    />
    <Image
      id="ApplicantWaistUpLg_Image"
      horizontalAlign="center"
      marginType="normal"
      src="{{documentsAdmin.data.applicantPhotos.waistUp.getUrl}}"
    />
  </View>
  <View
    id="f55b4"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Applicant - Headshot"
    viewKey="ApplicantHeadshot"
  >
    <Text
      id="text80"
      marginType="normal"
      value="#### Applicant - Headshot"
      verticalAlign="center"
    />
    <Image
      id="ApplicantHeadshotLg_Image"
      horizontalAlign="center"
      marginType="normal"
      src="{{documentsAdmin.data.applicantPhotos.headshot.getUrl}}"
    />
  </View>
  <Footer>
    <Text
      id="containerTitle107"
      marginType="normal"
      value="#### {{modalContainerDriversLicense.value}}"
      verticalAlign="center"
    />
  </Footer>
</Container>
