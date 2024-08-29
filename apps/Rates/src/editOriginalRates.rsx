<ModalFrame
  id="editOriginalRates"
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
      id="modalTitle3"
      value="### Edit Rate - {{rateBeingEditedData.value.tradeName}}"
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
        pluginId="editOriginalRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Switch
      id="afterHoursSwitch2"
      label="Add After Hours"
      value="{{rateBeingEditedData.value.addAfterHours}}"
    />
    <NumberInput
      id="editRateHourlyInput"
      currency="USD"
      format="currency"
      inputValue={0}
      label="Hourly Rate"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{rateBeingEditedData.value.hourlyRateCents/100}}"
    />
    <NumberInput
      id="editRateTripInput"
      currency="USD"
      format="currency"
      inputValue={0}
      label="Trip Fee"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{rateBeingEditedData.value.tripFeeCents/100}}"
    />
    <NumberInput
      id="editHourlyRateAfterHours"
      currency="USD"
      format="currency"
      hidden="{{!afterHoursSwitch2.value}}"
      inputValue={0}
      label="Hourly Rate (After Hours)"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{rateBeingEditedData.value.afterHoursFeeCents/100}}"
    />
    <NumberInput
      id="editTripFeeAfterHours"
      currency="USD"
      format="currency"
      hidden="{{!afterHoursSwitch2.value}}"
      inputValue={0}
      label="Trip Fee (After Hours)"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{rateBeingEditedData.value.afterHoursTripFeeCents/100}}"
    />
  </Body>
  <Footer>
    <Button
      id="button15"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="editOriginalRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="editRateHourlyInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="editRateTripInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "false" }] }}
        pluginId="afterHoursSwitch2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="editHourlyRateAfterHours"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="editTripFeeAfterHours"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button16"
      loading="{{putEditRateLogic.isFetching}}"
      text="Apply Rates"
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
