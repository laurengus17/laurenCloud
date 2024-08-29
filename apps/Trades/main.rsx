<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="serviceProviderID"
    defaultValue="bab74900-f917-4ad9-8f22-8682c741505c"
  />
  <Include src="./src/addSubtradeFame.rsx" />
  <Include src="./src/bulkApproveFrame.rsx" />
  <Include src="./src/bulkRejectFrame.rsx" />
  <Include src="./src/bulkRestrictFrame.rsx" />
  <Include src="./src/pdfFrame.rsx" />
  <Include src="./src/rejectFrame.rsx" />
  <Include src="./src/restrictFrame.rsx" />
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
      <ListView id="listViewLegacy1">
        <Include src="./src/container3.rsx" />
      </ListView>
    </ModuleContainerWidget>
  </Frame>
</App>
