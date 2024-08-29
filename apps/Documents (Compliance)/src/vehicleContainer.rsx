<Container
  id="vehicleContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  marginType="normal"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  showHeaderBorder={false}
>
  <Header>
    <Text
      id="containerTitle130"
      marginType="normal"
      value="#### Vehicle {{ i + 1 }}"
      verticalAlign="center"
    />
    <Alert
      id="alert18"
      description=""
      hidden="{{ profileStatus.value === 'REJECTED' }}"
      title="{{ Object.values(documents.value.vehicles[i]).filter((photo) => photo.complianceStatus === 'PENDING').length }} Records Pending Validation"
      type="{{validationsCounter.value.vehicles > 0 ? 'warning' : 'success'}}"
    />
  </Header>
  <View id="379eb" viewKey="View 1">
    <Include src="./container86.rsx" />
    <Include src="./container87.rsx" />
    <Include src="./container88.rsx" />
    <Include src="./container89.rsx" />
    <Include src="./container90.rsx" />
  </View>
</Container>
