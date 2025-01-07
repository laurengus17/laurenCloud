<ModalFrame
  id="modalFrame6"
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
  size="large"
  style={{ ordered: [{ headerBackground: "rgb(61, 23, 23)" }] }}
>
  <Header>
    <Text
      id="modalTitle6"
      style={{ ordered: [] }}
      value="### Add New Customer"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton7"
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
        pluginId="modalFrame6"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      showBody={true}
      showFooter={true}
      showHeader="false"
      style={{ ordered: [] }}
    >
      <TextArea
        id="account_name"
        autoResize={true}
        label="Account name"
        labelPosition="top"
        labelWrap={true}
        minLines={2}
        placeholder="Enter value"
        required={true}
      >
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="query20"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </TextArea>
      <TextArea
        id="id"
        autoResize={true}
        customValidation="{{ segmentidDB.data.id.find((cust) => cust === id.value.toUpperCase()) ? 'ID Already Exists' : '' }}"
        label="Id"
        labelPosition="top"
        labelWrap={true}
        maxLength="6"
        minLength="6"
        minLines={2}
        placeholder="Enter value"
        required={true}
      />
      <Text
        id="text29"
        disableMarkdown={true}
        hidden="{{  companyNameT.value.length == 1973 || companyNameT.value.length == 0}}"
        style={{
          ordered: [
            { color: "danger" },
            { fontSize: "labelFont" },
            { fontWeight: "labelFont" },
            { fontFamily: "labelFont" },
          ],
        }}
        value="Customer Might Already Exist"
        verticalAlign="center"
      />
      <Button
        id="button13"
        hidden="{{  companyNameT.value.length == 1973 || companyNameT.value.length == 0}}"
        text="Check Possible Existing Customers"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalFrame5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <TextArea
        id="address"
        autoResize={true}
        label="Address"
        labelPosition="top"
        labelWrap={true}
        minLines={2}
        placeholder="Enter value"
        required={true}
      />
      <TextArea
        id="address2"
        autoResize={true}
        label="Address2"
        labelPosition="top"
        labelWrap={true}
        minLines={2}
        placeholder="Enter value"
      />
      <TextArea
        id="city"
        autoResize={true}
        label="City"
        labelPosition="top"
        labelWrap={true}
        minLines={2}
        placeholder="Enter value"
        required={true}
      />
      <TextArea
        id="state"
        autoResize={true}
        label="State"
        labelPosition="top"
        labelWrap={true}
        minLines={2}
        placeholder="Enter value"
        required={true}
      />
      <NumberInput
        id="zip"
        currency="USD"
        inputValue={0}
        label="Zip"
        labelPosition="top"
        labelWrap={true}
        placeholder="Enter value"
        required={true}
        showStepper={true}
        value=""
      />
      <Select
        id="approved"
        emptyMessage="No options"
        hidden="true
"
        itemMode="static"
        label="Approved"
        labelPosition="top"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="Y"
      >
        <Option id="bc6ee" label="Yes" value="Y" />
        <Option id="440d5" label="No" value="N" />
      </Select>
      <Date
        id="date_on_file"
        dateFormat="MMM d, yyyy"
        datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
        disabled="true"
        hidden="true"
        iconBefore="bold/interface-calendar"
        label="Date On File"
        labelPosition="top"
        value="{{ new Date() }}"
      />
      <Select
        id="segment"
        allowCustomValue={true}
        data="{{ segmentidDB.data }}"
        emptyMessage="No options"
        label="Segment"
        labelPosition="top"
        labels="{{  item.segment}}"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
        values="{{  item.segment}}"
      />
      <Select
        id="csr"
        captionByIndex="{{ item.Csr }}"
        data="{{ CSR.data }}"
        emptyMessage="No options"
        label="CSR"
        labelPosition="top"
        labels="{{ `${item.firstName} ${item.lastName}` }}"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
        values="{{ item.email }}"
      />
      <TextArea
        id="sls_id"
        autoResize={true}
        label="Sales id"
        labelPosition="top"
        labelWrap={true}
        minLines={2}
        placeholder="Enter value"
        value="{{ salesVar.value }}"
      />
      <Select
        id="ty_ue"
        emptyMessage="No options"
        itemMode="static"
        label="Type"
        labelPosition="top"
        overlayMaxHeight={375}
        placeholder="Select an option"
        required={true}
        showSelectionIndicator={true}
        value="U"
      >
        <Option id="bc6ee" label="Customer" value="C" />
        <Option id="440d5" label="Universals" value="U" />
      </Select>
      <Select
        id="status3"
        emptyMessage="No options"
        itemMode="static"
        label="Status"
        labelPosition="top"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="Active"
      >
        <Option id="bc6ee" value="Active" />
        <Option id="440d5" value="Do Not Pursue" />
      </Select>
      <Event
        enabled="{{companyNameT.value.length > 0}}"
        event="submit"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame5"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{  companyNameT.value.length == 0}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addRow"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button
      id="formButton1"
      submit={true}
      submitTargetId="form1"
      text="Submit"
    />
  </Footer>
</ModalFrame>
