<ModalFrame
  id="bulkEditRates"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="true"
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
    <Text id="modalTitle2" value="### Edit Rates" verticalAlign="center" />
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
        pluginId="bulkEditRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "uneditedRates" }] }}
        pluginId="bulkEditType"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Include src="./container90.rsx" />
  </Body>
  <Footer>
    <Button
      id="button11"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="bulkEditRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="percentageModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearSelection"
        params={{ ordered: [] }}
        pluginId="partnershipsModalTable"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearSelection"
        params={{ ordered: [] }}
        pluginId="uneditedRatesModalTable"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="hourlyRateModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="tripFeeModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="hourlyRateAfterHours"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="tripFeeAfterHours"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "false" }] }}
        pluginId="afterHoursSwitch"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button12"
      disabled="{{editRateLogicPayloadTransformer.value.updatedRates.length === 0}}"
      text="Apply To Selected"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="putEditRateLogic"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
