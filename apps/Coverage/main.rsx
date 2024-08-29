<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetOutput
    id="isNotSaved"
    value="{{!saveTravelTimeButton.disabled}}"
  />
  <GlobalWidgetProp
    id="serviceProviderID"
    defaultValue="ab196c42-fb8e-4e46-ae8e-6025eb993ea4"
  />
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
      <Include src="./src/container89.rsx" />
    </ModuleContainerWidget>
  </Frame>
</App>
