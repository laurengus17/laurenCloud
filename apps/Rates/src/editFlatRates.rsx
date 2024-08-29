<ModalFrame
  id="editFlatRates"
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
      id="modalTitle5"
      value="### Edit Rate - {{rateBeingEditedData.value.tradeName}}"
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
        pluginId="editFlatRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <NumberInput
      id="editFlatRateInput"
      currency="USD"
      format="currency"
      inputValue={0}
      label="Flat Rate"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{rateBeingEditedData.value.flatRateCents/100}}"
    />
    <EditableText
      id="editFlatRateNoteInput"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Note"
      labelPosition="top"
      placeholder="Enter value"
      value="{{rateBeingEditedData.value.notes}}"
    />
  </Body>
  <Footer>
    <Button
      id="button19"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="editFlatRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button20"
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
