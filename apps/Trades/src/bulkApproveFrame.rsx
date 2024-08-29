<ModalFrame
  id="bulkApproveFrame"
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
      value="### Bulk Approve Subtrades of {{tradeBeingUpdated.value.tradeName}}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton2"
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
        pluginId="bulkApproveFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text1"
      value="After clicking Continue, {{tradeBeingUpdated.value.subtrades.length}} Subtrades of {{tradeBeingUpdated.value.tradeName}} will be automatically approved. Are you sure you want to proceed with this action?"
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <Button
      id="button1"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="bulkApproveFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button2"
      loading="{{putUpdateTradeStatus.isFetching}}"
      text="Continue"
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
