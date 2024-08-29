<ModalFrame
  id="modalApproveSP"
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
      id="modalTitle4"
      margin="4px 8px 0px 8px"
      value={
        '{{ displayMode.value === "compliance" ? "### Approve this Applicant for Alignment?" : displayMode.value === "alignment" ? "### Resend Scheduling Request?" : "" }} '
      }
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
        pluginId="modalApproveSP"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextInput
      id="textInputCalendlyLink"
      customValidation={
        '{{ textInputCalendlyLink.value.includes("calendly.com") ? null : "Link must be from Calendly" }}'
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
      id="button19"
      style={{ ordered: [{ background: "canvas" }] }}
      text="Cancel"
    >
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
    <Button
      id="button18"
      disabled="{{ !textInputCalendlyLink.value || textInputCalendlyLink.invalid }}"
      style={{ ordered: [{ background: "primary" }] }}
      text={
        '{{ displayMode.value === "compliance" ? "Yes, Approve" : displayMode.value === "alignment" ? "Submit" : "" }}'
      }
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateStatusToAlignment"
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
