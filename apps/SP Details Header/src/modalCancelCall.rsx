<ModalFrame
  id="modalCancelCall"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showFooterBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle3"
      margin="4px 8px 0px 8px"
      value="### Cancel Alignment Call?"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton3"
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
        pluginId="modalCancelCall"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text90"
      margin="0px 8px"
      value="This action cannot be undone"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <TextArea
      id="textAreaReasonCancellation"
      autoResize={true}
      label="Reason for cancellation"
      labelPosition="top"
      minLines={2}
      placeholder="Enter"
      required={true}
    />
  </Body>
  <Footer>
    <Button
      id="button16"
      style={{ ordered: [{ background: "canvas" }] }}
      text="Do Not Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalCancelCall"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button17"
      disabled="{{ !textAreaReasonCancellation.value }}"
      style={{ ordered: [{ background: "danger" }] }}
      text="Yes, Confirm Cancellation"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalCancelCall"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateStatusToCallCancelled"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sendCancellationReview"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSpDetails"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
