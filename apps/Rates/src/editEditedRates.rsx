<ModalFrame
  id="editEditedRates"
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
      value="### Edit Rate - {{rateBeingEditedData.value.tradeName}}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton6"
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
        pluginId="editEditedRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Switch id="afterHoursSwitch4" label="Add After Hours Fee" />
    <NumberInput
      id="editRateEditedHourlyInput"
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
      id="editRateEditedTripFeeInput"
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
      id="currency3"
      currency="USD"
      format="currency"
      hidden="{{!afterHoursSwitch4.value}}"
      inputValue={0}
      label="Hourly Rate (After Hours)"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{rateBeingEditedData.value.afterHoursFeeCents/100}}"
    />
    <NumberInput
      id="currency4"
      currency="USD"
      format="currency"
      hidden="{{!afterHoursSwitch4?.value}}"
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
      id="button21"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="editEditedRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button22"
      loading="{{putEditRateLogic.isFetching}}"
      text="Apply"
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
