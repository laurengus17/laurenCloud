<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="8px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ name: "Inter", size: "14px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "24px" }}
    h3Font={{ size: "20px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary=""
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./src/continueWithoutSavingModal.rsx" />
  <Include src="./src/modalFrame.rsx" />
  <Include src="./src/modalFrameAddSubtrade.rsx" />
  <Include src="./src/modalVehicles.rsx" />
  <Include src="./src/rateLogic.rsx" />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="0"
    sticky={null}
    style={{ ordered: [{ canvas: "rgba(235, 235, 235, 1)" }] }}
    type="main"
  >
    <Module
      id="spDetailsHeader1"
      isCompliant="{{ isSPCompliant.value }}"
      margin="0"
      mode="alignment"
      name="SP Details Header"
      pageUuid="4a9ca037-9bef-4151-a35b-2a5ce248a23e"
      serviceProviderId="{{ userId.value }}"
      spDetailsTrigger=""
    />
    <Include src="./src/tabbedContainer1.rsx" />
  </Frame>
</App>
