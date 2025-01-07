<ModalFrame
  id="modalFrame11"
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
      id="modalTitle17"
      value="### {{ CustomerName.selectedItem.id }} New Address"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton19"
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
        pluginId="modalFrame11"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form8"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text id="formTitle8" verticalAlign="center" />
      </Header>
      <Body>
        <TextArea
          id="textArea2"
          autoResize={true}
          formDataKey="Addr1"
          label="Address 1"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="textArea3"
          autoResize={true}
          formDataKey="Addr2"
          label="Address 2"
          minLines={2}
          placeholder="Enter value"
        />
        <TextArea
          id="textArea4"
          autoResize={true}
          formDataKey="City"
          label="City"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="textArea7"
          autoResize={true}
          formDataKey="ST"
          label="State"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="textArea5"
          autoResize={true}
          disabled="true"
          formDataKey="custID"
          label="Customer ID"
          minLines={2}
          placeholder="Enter value"
          required={true}
          value="{{ CustomerName.selectedItem.id }}"
        />
        <TextArea
          id="textArea6"
          autoResize={true}
          formDataKey="Zip"
          label="Zip"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
      </Body>
      <Footer>
        <Button
          id="formButton10"
          submit={true}
          submitTargetId="form8"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="form8SubmitToSalesShippingLoc"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalFrame11"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
