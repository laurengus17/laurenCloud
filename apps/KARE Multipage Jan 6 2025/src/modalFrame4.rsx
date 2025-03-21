<ModalFrame
  id="modalFrame4"
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
    <Text id="modalTitle9" value="### New Contact" verticalAlign="center" />
    <Button
      id="modalCloseButton10"
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
        pluginId="modalFrame4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle2" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Select
          id="ncCustomer"
          data="{{ Cust.data }}"
          emptyMessage="No options"
          label="Customer"
          labelPosition="top"
          labels="{{ item.account_name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ table2.selectedRow.id }}"
          values="{{ item.id }}"
        />
        <TextInput
          id="contactName2"
          label="Contact Name"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="phoneNumberB2"
          label="Cell Number"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="titleA2"
          label="Title"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="phoneNumberA2"
          label="Phone Number"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="cEmail2"
          label="Email"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="cAddress2"
          label="Address"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="cNote2"
          label="Notes"
          labelPosition="top"
          placeholder="Enter value"
        />
      </Body>
      <Footer>
        <Button
          id="formButton7"
          submit={true}
          submitTargetId="form4"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="newCContact"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
