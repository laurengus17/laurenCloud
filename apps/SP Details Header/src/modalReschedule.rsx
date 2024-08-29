<ModalFrame
  id="modalReschedule"
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
      id="modalTitle5"
      value="### Reschedule Alignment Call?"
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
        pluginId="modalReschedule"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextInput
      id="textInputCalendlyLink2"
      customValidation={
        '{{ textInputCalendlyLink2.value.includes("calendly.com") ? null : "Link must be from Calendly" }}'
      }
      label="Calendly Link"
      labelPosition="top"
      patternType="url"
      placeholder="Enter link"
      required={true}
    />
  </Body>
  <Footer>
    <Button
      id="button21"
      style={{ ordered: [{ background: "canvas" }] }}
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalReschedule"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button20"
      disabled="{{ !textInputCalendlyLink2.value || textInputCalendlyLink2.invalid }}"
      style={{ ordered: [{ background: "primary" }] }}
      text="Yes, Reschedule"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateStatusToRescheduleRequest"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalReschedule"
        type="widget"
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
