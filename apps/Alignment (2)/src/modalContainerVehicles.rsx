<Container
  id="modalContainerVehicles"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="normal"
  padding="0"
  showBody={true}
  style={{ ordered: [{ border: "rgba(224, 224, 224, 0)" }] }}
>
  <View id="621b3" label="Vehicle - Front" viewKey="VehicleFront">
    <Text
      id="text96"
      marginType="normal"
      value="#### Vehicle - Front"
      verticalAlign="center"
    />
    <Image
      id="DriversLicenseFrontLg_Image2"
      horizontalAlign="center"
      marginType="normal"
      src="{{documentsAdmin.data.vehicles[0].frontPhoto.getUrl}}"
    />
  </View>
  <View
    id="55358"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Vehicle - Back"
    viewKey="VehicleBack"
  >
    <Text
      id="text95"
      marginType="normal"
      value="#### Vehicle - Back"
      verticalAlign="center"
    />
    <Image
      id="DriversLicenseBackLg_Image2"
      horizontalAlign="center"
      marginType="normal"
      src="{{documentsAdmin.data.vehicles[0].backPhoto.getUrl}}"
    />
  </View>
  <View
    id="4fee3"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Vehicle - Left"
    viewKey="VehicleLeft"
  >
    <Text
      id="text97"
      marginType="normal"
      value="#### Vehicle - Left"
      verticalAlign="center"
    />
    <Image
      id="ApplicantWaistUpLg_Image2"
      horizontalAlign="center"
      marginType="normal"
      src="{{documentsAdmin.data.vehicles[0].leftPhoto.getUrl}}"
    />
  </View>
  <View
    id="f55b4"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Vehicle - Right"
    viewKey="VehicleRight"
  >
    <Text
      id="text98"
      marginType="normal"
      value="#### Vehicle - Right"
      verticalAlign="center"
    />
    <Image
      id="ApplicantHeadshotLg_Image2"
      horizontalAlign="center"
      marginType="normal"
      src="{{documentsAdmin.data.vehicles[0].rightPhoto.getUrl}}"
    />
  </View>
  <View
    id="4ddfa"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Vehicle - Vin"
    viewKey="VehicleVin"
  >
    <Text
      id="text100"
      marginType="normal"
      value="#### Vehicle - Vin"
      verticalAlign="center"
    />
    <Image
      id="ApplicantHeadshotLg_Image3"
      horizontalAlign="center"
      marginType="normal"
      src="{{documentsAdmin.data.vehicles[0].vinPhoto.getUrl}}"
    />
  </View>
  <Footer>
    <Text
      id="containerTitle138"
      marginType="normal"
      value="#### {{modalContainerVehicles.value}}"
      verticalAlign="center"
    />
  </Footer>
</Container>
