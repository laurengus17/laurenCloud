<ModalFrame
  id="modalVehicles"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Select
      id="select57"
      emptyMessage="No options"
      itemMode="static"
      label=""
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="Vehicle-1"
    >
      <Option id="2175b" label="Vehicle-1" value="Vehicle-1" />
      <Option id="e7323" label="Vehicle-2" value="Vehicle-2" />
    </Select>
    <ButtonGroup2 id="buttonGroup2" alignment="center" overflowPosition={2}>
      <ButtonGroup2-Button
        id="3a3cd"
        icon="bold/interface-arrows-left"
        iconPosition="replace"
        styleVariant="transparent"
        text="Back"
      >
        <Event
          event="click"
          method="showPreviousView"
          params={{ ordered: [] }}
          pluginId="modalContainerVehicles"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="48cbd"
        icon="bold/interface-arrows-right"
        iconPosition="replace"
        styleVariant="transparent"
        text="Next"
      >
        <Event
          event="click"
          method="showNextView"
          params={{ ordered: [] }}
          pluginId="modalContainerVehicles"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
    <Button
      id="modalCloseButton4"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      marginType="normal"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalVehicles"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Include src="./modalContainerVehicles.rsx" />
  </Body>
</ModalFrame>
