<ModalFrame
  id="editPartnershipRates"
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
      value="### Edit Rate - {{rateBeingEditedData.value.tradeName}}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton4"
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
        pluginId="editPartnershipRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <NumberInput
      id="editRatePercentageInput"
      currency="USD"
      inputValue={0}
      label="Percentage"
      labelPosition="top"
      max={1}
      min={0}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{rateBeingEditedData.value.partnershipPercentage}}"
    />
  </Body>
  <Footer>
    <Button
      id="button17"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="editPartnershipRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button18"
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
