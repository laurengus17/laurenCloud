<ModalFrame
  id="restrictFrame"
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
      id="modalTitle4"
      value="### Restrict - {{subtradeBeingRejected.value.tradeName}}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton5"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="restrictFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextInput
      id="textInput3"
      label="Reason"
      labelPosition="top"
      placeholder="Enter value"
    />
  </Body>
  <Footer>
    <Button
      id="button6"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Close"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="restrictFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getTradeAndEquipment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button7"
      loading="{{putUpdateTradeStatus.isFetching}}"
      text="Restrict Approval"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="putUpdateTradeStatus"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
