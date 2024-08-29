<ModalFrame
  id="rateLogic"
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
  size="medium"
>
  <Header>
    <Text
      id="modalTitle1"
      marginType="normal"
      value="### Add New Rate Logic"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton2"
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
        pluginId="rateLogic"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Select
      id="select56"
      emptyMessage="No options"
      itemMode="static"
      label="Rate Logic"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select Rate Logic"
      showSelectionIndicator={true}
    >
      <Option id="b7c94" label="Per job flat rate" value="Option 1" />
      <Option id="68e78" value="Partnerships" />
    </Select>
    <NumberInput
      id="numberInput1"
      currency="USD"
      format="currency"
      inputValue={0}
      label="Flat Rate"
      labelPosition="top"
      marginType="normal"
      placeholder="Flat Rate"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Switch
      id="switch1"
      label="Add After Hours
"
      marginType="normal"
    />
    <TextInput
      id="textInput282"
      label="Notes"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
    />
  </Body>
</ModalFrame>
