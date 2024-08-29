<ModalFrame
  id="modalResendScheduleRequest"
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
      id="modalResendScheduleRequestText"
      margin="4px 8px 0px 8px"
      value="### Resend Scheduling Request?"
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
        pluginId="modalResendScheduleRequest"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextInput
      id="textInputCalendlyLink3"
      customValidation={
        '{{ textInputCalendlyLink3.value.includes("calendly.com") ? null : "Link must be from Calendly" }}'
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
      id="button22"
      style={{ ordered: [{ background: "canvas" }] }}
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalResendScheduleRequest"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button23"
      disabled="{{ !textInputCalendlyLink3.value || textInputCalendlyLink3.invalid }}"
      style={{ ordered: [{ background: "primary" }] }}
      text="Submit"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sendComplianceApprovalEmailSMS"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalApproveSP"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
