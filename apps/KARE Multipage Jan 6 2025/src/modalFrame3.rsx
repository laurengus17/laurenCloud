<ModalFrame
  id="modalFrame3"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle8"
      value="### {{ table9.selectedRow.contactID }} Contact"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton9"
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
        pluginId="modalFrame3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <TextInput
          id="contactName"
          label="Contact Name"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ table9.selectedRow.contactName }}"
        />
        <TextInput
          id="titleA"
          label="Title"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ table9.selectedRow.title }}"
        />
        <TextInput
          id="phoneNumberA"
          label="Phone Number"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ table9.selectedRow.phoneNumberA }}"
        />
        <TextInput
          id="phoneNumberB"
          label="Phone Number 2"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ table9.selectedRow.phoneNumberB }}"
        />
        <TextInput
          id="cEmail"
          label="Email"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ table9.selectedRow?.email }}"
        />
        <TextInput
          id="cAddress"
          label="Address"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ table9.selectedRow?.address }}"
        />
        <TextInput
          id="cNote"
          label="Notes"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ table9.selectedRow.note }}"
        />
        <Checkbox
          id="cActive"
          label="Active"
          labelWidth="100"
          value="{{ table9.selectedRow?.active }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton6"
          submit={true}
          submitTargetId="form3"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateContact"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
