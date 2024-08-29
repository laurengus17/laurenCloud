<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <GlobalWidgetProp id="isCompliant" defaultValue="false" />
  <GlobalWidgetProp
    id="mode"
    defaultValue="compliance"
    description={'"compliance" || "alignment" || "post-alignment"'}
  />
  <GlobalWidgetProp
    id="serviceProviderId"
    defaultValue="6e3a681c-7bf5-467a-9dd7-5762cabe37b5"
  />
  <GlobalWidgetProp id="spDetailsTrigger" />
  <Include src="./src/modalApproveSP.rsx" />
  <Include src="./src/modalCancelCall.rsx" />
  <Include src="./src/modalRejectSP.rsx" />
  <Include src="./src/modalRequestRevision.rsx" />
  <Include src="./src/modalReschedule.rsx" />
  <Include src="./src/modalResendScheduleRequest.rsx" />
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
      isCompliant=""
      isGlobalWidgetContainer={true}
      margin="0"
      mode=""
      serviceProviderId=""
    >
      <Container
        id="container63"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="12px"
        showBody={true}
        showBorder={false}
        style={{ ordered: [{ borderRadius: "0px" }] }}
      >
        <Header>
          <Text
            id="containerTitle3"
            value="#### Container title"
            verticalAlign="center"
          />
        </Header>
        <View id="20638" viewKey="View 1">
          <Breadcrumbs
            id="breadcrumbs1"
            itemMode="static"
            margin=""
            value="{{ retoolContext.appUuid }}"
          >
            <Option
              id="43b8e"
              appTarget="871be8ae-2285-11ef-bcec-cb0279140257"
              itemType="app"
              label="Service Providers"
            />
            <Option
              id="2304e"
              itemType="app"
              label="{{ getSPDetails.data.firstname }} {{ getSPDetails.data.lastname }}"
            />
          </Breadcrumbs>
        </View>
      </Container>
      <Include src="./src/spDetailsHeader.rsx" />
    </ModuleContainerWidget>
  </Frame>
</App>
