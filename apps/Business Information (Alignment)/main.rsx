<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="serviceProviderId"
    defaultValue={'"311294d4-7190-4b3e-9574-ebbf4cb65d9b"'}
    value="311294d4-7190-4b3e-9574-ebbf4cb65d9b"
  />
  <Include src="./src/businessStatusModal.rsx" />
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
      hidden=""
      isGlobalWidgetContainer={true}
      margin="4px 8px"
      serviceProviderId="311294d4-7190-4b3e-9574-ebbf4cb65d9b"
    >
      <Include src="./src/container99.rsx" />
    </ModuleContainerWidget>
  </Frame>
</App>
