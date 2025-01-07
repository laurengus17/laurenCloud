<ModalFrame
  id="modalFrame8"
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
    <Text id="modalTitle11" value="### Email" verticalAlign="center" />
    <Button
      id="modalCloseButton13"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame8"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text28"
      value="#### Company Does Not Have CSR Assigned. Please Choose One"
      verticalAlign="center"
    />
    <Select
      id="email"
      captionByIndex="{{ item.email }}"
      data="{{ CSR2.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.email }}"
    />
  </Body>
  <Footer>
    <Button
      id="button8"
      disabled="{{ email.value == null }}"
      submitTargetId=""
      text="Submit"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalFrame8"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="noCSRAssigned"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
