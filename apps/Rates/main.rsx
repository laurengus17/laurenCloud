<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="serviceProviderID"
    defaultValue="f8c7d8b0-6efa-4e0c-985a-fda07abd269e"
  />
  <Include src="./src/bulkEditRates.rsx" />
  <Include src="./src/editEditedRates.rsx" />
  <Include src="./src/editFlatRates.rsx" />
  <Include src="./src/editOriginalRates.rsx" />
  <Include src="./src/editPartnershipRates.rsx" />
  <Include src="./src/newRateLogic.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Container
        id="container1"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        padding="12px"
        showBody={true}
      >
        <Header>
          <Text
            id="containerTitle1"
            value="#### Container title"
            verticalAlign="center"
          />
        </Header>
        <View id="0abf3" viewKey="View 1">
          <Include src="./src/container87.rsx" />
        </View>
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
