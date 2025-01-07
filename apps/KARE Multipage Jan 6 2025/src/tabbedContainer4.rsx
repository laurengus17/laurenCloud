<Container
  id="tabbedContainer4"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs4"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer4"
      value="{{ self.values[0] }}"
    >
      <Option id="1ca4f" value="Tab 1" />
      <Option id="48bdf" value="Tab 2" />
      <Option id="72a4a" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="ab62f" viewKey="Info">
    <Form
      id="form2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ transformer1.value }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
    >
      <Body>
        <TextInput
          id="editID"
          formDataKey="id"
          label="ID"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="editAccountname"
          formDataKey="account_name"
          label="Account name"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="editAddress"
          formDataKey="address"
          label="Address"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="editAddress2"
          formDataKey="address2"
          label="Address 2"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="editCity"
          formDataKey="city"
          label="City"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="editState"
          formDataKey="state"
          label="State"
          labelPosition="top"
          placeholder="Enter value"
        />
        <NumberInput
          id="editZip"
          currency="USD"
          formDataKey="zip"
          inputValue={0}
          label="Zip"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showStepper={true}
          value={0}
        />
        <TextInput
          id="editsls"
          formDataKey="sls_id"
          label="Sls ID"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="editCsr"
          formDataKey="csr"
          label="Csr"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="editSegment"
          formDataKey="segment"
          label="Segment"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Date
          id="editDOF"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="date_on_file"
          iconBefore="bold/interface-calendar"
          label="Date on file"
          labelPosition="top"
          required={true}
          value="{{ new Date() }}"
        />
        <TextInput
          id="editApproved"
          formDataKey="approved"
          label="Approved"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="editLO"
          formDataKey="last_order"
          hidden="true"
          label="Last order"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="editStatus"
          formDataKey="status"
          label="Status"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="editTypeH"
          formDataKey="ty_ue"
          hidden="true"
          label="Type"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Select
          id="editType"
          emptyMessage="No options"
          formDataKey="ty_ue"
          itemMode="static"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ editTypeH.value }}"
        >
          <Option id="7318a" label="Customer" value="C" />
          <Option id="4478f" label="Universal" value="U" />
        </Select>
      </Body>
      <Footer>
        <Button id="button6" text="Submit">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="editRow"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="editRow"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View id="0a896" viewKey="Contacts">
    <Switch id="switch1" label="{{ switchLabel.data[0].two }}" value="true">
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="switchLabel"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <Table
      id="table9"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ custContact.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "696e5" },
            { columnId: "01c00" },
            { operator: "=" },
            { value: "{{ switch1.value }}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="b5758"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={27.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="e4ac3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="contactName"
        label="Contact name"
        placeholder="Enter value"
        position="center"
        size={95.6875}
        summaryAggregationMode="none"
      />
      <Column
        id="c062e"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        position="center"
        size={150.640625}
        summaryAggregationMode="none"
      />
      <Column
        id="bcecc"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="phoneNumber"
        formatOptions={{
          showFormatting: true,
          showCountryCallingCode: false,
          restrictToCountry: false,
        }}
        groupAggregationMode="sum"
        key="phoneNumberA"
        label="Phone number a"
        placeholder="Enter value"
        position="center"
        size={108.734375}
        summaryAggregationMode="none"
      />
      <Column
        id="67a8d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="ext"
        label="Ext"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="73b2e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="phoneNumberB"
        label="Cell Number"
        placeholder="Enter value"
        position="center"
        size={109.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="411a1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="address"
        label="Address"
        placeholder="Enter value"
        position="center"
        size={239.84375}
        summaryAggregationMode="none"
      />
      <Column
        id="01c00"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="active"
        label="Active"
        placeholder="Enter value"
        position="center"
        size={51.453125}
        summaryAggregationMode="none"
      />
      <Column
        id="c36a4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="note"
        label="Note"
        placeholder="Enter value"
        position="center"
        size={43.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="8da9b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="title"
        label="Title"
        placeholder="Enter value"
        position="center"
        size={49.53125}
        summaryAggregationMode="none"
      />
      <Column
        id="22b9a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="customerID"
        label="Customer id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="74961"
        alignment="left"
        format="string"
        formatOptions={{ dateFormat: "" }}
        groupAggregationMode="none"
        key="birthday"
        label="Birthday"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table9"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Button id="button5" text="New Contact">
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="65c0d"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Startgic Profile"
  >
    <Form
      id="form5"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData=""
      padding="12px"
      requireValidation={true}
      scroll={true}
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle3" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <TextArea
          id="rchc"
          autoResize={true}
          formDataKey=""
          label="Relevant Company History & Culture"
          minLines={2}
          placeholder="Enter value"
          value="{{ stratProfile.data.rchc[0]}}"
        />
        <TextArea
          id="stratFit"
          autoResize={true}
          formDataKey=""
          label="Strategic Fit"
          minLines={2}
          placeholder="Enter value"
          value="{{ stratProfile.data.stratFit[0]}}"
        />
        <TextArea
          id="ppiStrgth"
          autoResize={true}
          formDataKey="ppiStrgth"
          label="PPI Strengths"
          minLines={2}
          placeholder="Enter value"
          value="{{ stratProfile.data.ppiStrgth[0]}}"
        />
        <TextArea
          id="ppiwknss"
          autoResize={true}
          formDataKey=""
          label="PPI Weaknesses"
          minLines={2}
          placeholder="Enter value"
          value="{{ stratProfile.data.ppiwknss[0]}}"
        />
        <TextArea
          id="kpainP"
          autoResize={true}
          formDataKey=""
          label="Known Pain Points"
          minLines={2}
          placeholder="Enter value"
          value="{{ stratProfile.data.kpainP[0]}}"
        />
        <TextArea
          id="currentSup"
          autoResize={true}
          formDataKey=""
          label="Current Suppliers"
          minLines={2}
          placeholder="Enter value"
          value="{{ stratProfile.data.currentSup[0]}}"
        />
        <TextArea
          id="compExistCust"
          autoResize={true}
          formDataKey=""
          label="Comparable Existing Customers"
          minLines={2}
          placeholder="Enter value"
          value="{{ stratProfile.data.compExistCust[0]}}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton5"
          submit={true}
          submitTargetId="form5"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateStratProfile"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View
    id="ca46f"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Projects"
  >
    <Table
      id="table17"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ kare2.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="fa85c"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="fa85c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="39db4"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kare_group"
        label="Kare group"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b2891"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sales_id"
        label="Sales ID"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b8ff6"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="customer_name"
        label="Customer name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="678bf"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="project_name"
        label="Project name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0c56d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="territory"
        label="Territory"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="f1be8"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="project_start_year"
        label="Project start year"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="90558"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="active_project_year"
        label="Active project year"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c7efc"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="funnel_stage"
        label="Funnel stage"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="44aae"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="won_lost"
        label="Won lost"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3dd9c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="market"
        label="Market"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="91b7c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="main_product_target"
        label="Main product target"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c2d56"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="overall_est_opportunity_in_lbs"
        label="Overall est opportunity in lbs"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="f9917"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="current_customer_volume_in_l_bs"
        label="Current customer volume in l bs"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="abff2"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="targeted_additional_annual_lbs"
        label="Targeted additional annual lbs"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="37379"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="taraget_additional_printed_impressions_units"
        label="Taraget additional printed impressions units"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="64753"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="target_additional_annual_bags"
        label="Target additional annual bags"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="abf3f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="targeted_additional_landscape_bags"
        label="Targeted additional landscape bags"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="60a92"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="open_new_opportunity_quote"
        label="Open new opportunity quote"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b4c98"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="project_desc"
        label="Project desc"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="71522"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="total_funnel_progression"
        label="Total funnel progression"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="f14f1"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="custID"
        label="Cust id"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table17"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table17"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="projectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
</Container>
