<ModalFrame
  id="bulkRestrictFrame"
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
      id="modalTitle6"
      value="### Bulk Restrict Subtrades of {{tradeBeingUpdated.value.tradeName}}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton7"
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
        pluginId="bulkRestrictFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text5"
      value="After clicking Continue, {{tradeBeingUpdated.value.subtrades.length}} Subtrades of {{tradeBeingUpdated.value.tradeName}} will be automatically restricted. Are you sure you want to proceed with this action?"
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <Button
      id="button12"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="bulkRestrictFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button13"
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
