<Container
  id="tabbedContainer2"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ headerBackground: "rgb(11, 22, 42)" }] }}
>
  <Header>
    <Tabs
      id="tabs2"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="d3436" value="Tab 1" />
      <Option id="a93fe" value="Tab 2" />
      <Option id="28a6b" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="ad351"
    viewKey="Assigned Customers
"
  >
    <Table
      id="table8"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ salesCustPros.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "99cae", direction: "desc" } }]}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      limitOffsetRowCount=""
      rowBackgroundColor=""
      rowHeight="small"
      searchTerm="{{ searchFilter.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{}}
      templatePageSize="15"
      toolbarPosition="bottom"
    >
      <Column
        id="1e14c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="id"
        label="ID"
        placeholder="Select option"
        position="center"
        size={85.609375}
      />
      <Column
        id="66b3d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="ty_ue"
        label="Ty ue"
        placeholder="Select option"
        position="center"
        size={47.484375}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="2a04c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="account_name"
        label="Account name"
        placeholder="Enter value"
        position="center"
        size={209.484375}
      />
      <Column
        id="6b1ac"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="address"
        label="Address"
        placeholder="Enter value"
        position="center"
        size={185.84375}
      />
      <Column
        id="5f35e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="address2"
        label="Address 2"
        placeholder="Enter value"
        position="center"
        size={75.421875}
      />
      <Column
        id="fb7b6"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="city"
        label="City"
        placeholder="Enter value"
        position="center"
        size={112.9375}
      />
      <Column
        id="a8ef0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="state"
        label="State"
        placeholder="Enter value"
        position="center"
        size={46.859375}
      />
      <Column
        id="f871e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="zip"
        label="Zip"
        placeholder="Enter value"
        position="center"
        size={58.171875}
      />
      <Column
        id="d9cb7"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="sum"
        hidden="{{  UAvariable == true}}"
        key="sls_id"
        label="Sls ID"
        placeholder="Select option"
        position="center"
        size={51.765625}
      />
      <Column
        id="1045e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="csr"
        label="Csr"
        placeholder="Select option"
        position="center"
        size={51.171875}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="6736a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="segment"
        label="Segment"
        placeholder="Select option"
        position="center"
        size={150.875}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="73229"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="date_on_file"
        label="Date on file"
        placeholder="Enter value"
        position="center"
        size={81.65625}
      />
      <Column
        id="21e8c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="approved"
        label="Approved"
        placeholder="Select option"
        position="center"
        size={72.609375}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="9a9f9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="last_order"
        label="Last order"
        placeholder="Enter value"
        position="center"
        size={213.421875}
      />
      <Column
        id="bf0f5"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={114.921875}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="99cae"
        alignment="right"
        backgroundColor={'{{ item > 0 ? "#059669":"#DC2626" }}'}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: false, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="Count"
        placeholder="Enter value"
        position="center"
        referenceId="count"
        size={100}
        valueOverride="{{ formatDataAsArray(custCount.data).find(({ cust }) => cust === currentSourceRow.id ).num}}"
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
          pluginId="table8"
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
          pluginId="table8"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="existingProjects"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View id="e6d31" viewKey="Universal">
    <Table
      id="dataTable2"
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ karejoincustforTabbed.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "dee66", direction: "desc" } }]}
      enableSaveActions={true}
      rowHeight="small"
      searchTerm="{{searchFilter.value}}"
      selectedDataIndexes={[]}
      selectedRowKeys={[]}
      selectedRows={[]}
      selectedSourceRows={[]}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      sortArray={[]}
      style={{
        border: "rgb(204, 204, 204)",
        borderRadius: "8px",
        accent: "rgb(70, 166, 124)",
      }}
      templatePageSize={20}
    >
      <Column
        id="26edd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kare_group"
        label="Kare group"
        placeholder="Select option"
        position="left"
        size={79.6875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1151"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sales_id"
        label="Sales ID"
        placeholder="Select option"
        position="left"
        size={62.484375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1759"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="customer_name"
        label="Customer name"
        placeholder="Enter value"
        position="left"
        size={195.984375}
        summaryAggregationMode="none"
      />
      <Column
        id="1ec07"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="project_name"
        label="Project name"
        placeholder="Enter value"
        position="left"
        size={160.71875}
        summaryAggregationMode="none"
      />
      <Column
        id="dee66"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={39.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="9d065"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="project_start_year"
        label="Project start year"
        placeholder="Enter value"
        position="center"
        size={116.375}
        summaryAggregationMode="none"
      />
      <Column
        id="7059f"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="territory"
        label="Territory"
        placeholder="Select option"
        position="center"
        size={66.390625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="9a2a5"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="active_project_year"
        label="Active project year"
        placeholder="Enter value"
        position="center"
        size={125.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="90761"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="funnel_stage"
        label="Funnel stage"
        placeholder="Select option"
        position="center"
        size={90.4375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f3116"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="won_lost"
        label="Status"
        placeholder="Select option"
        position="center"
        size={62.84375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="aeabb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="market"
        label="Market"
        placeholder="Select option"
        position="center"
        size={56.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3c80c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="main_product_target"
        label="Main product target"
        placeholder="Select option"
        position="center"
        size={130.921875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="24130"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="overall_est_opportunity_in_lbs"
        label="Overall est opportunity in lbs"
        placeholder="Enter value"
        position="center"
        size={183.265625}
        summaryAggregationMode="none"
      />
      <Column
        id="d3c69"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="current_customer_volume_in_l_bs"
        label="Current customer volume in l bs"
        placeholder="Enter value"
        position="center"
        size={200.625}
        summaryAggregationMode="none"
      />
      <Column
        id="676c0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_annual_lbs"
        label="Targeted additional annual lbs"
        placeholder="Enter value"
        position="center"
        size={190.75}
        summaryAggregationMode="none"
      />
      <Column
        id="137a3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="taraget_additional_printed_impressions_units"
        label="Taraget additional printed impressions units"
        placeholder="Enter value"
        position="center"
        size={271.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="4e297"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="target_additional_annual_bags"
        label="Target additional annual bags"
        placeholder="Enter value"
        position="center"
        size={187.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="049dd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_landscape_bags"
        label="Targeted additional landscape bags"
        placeholder="Enter value"
        position="center"
        size={223.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="9a98f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="open_new_opportunity_quote"
        label="Open new opportunity quote"
        placeholder="Enter value"
        position="center"
        size={182.78125}
        summaryAggregationMode="none"
      />
      <Column
        id="a3d9d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_desc"
        label="Project desc"
        placeholder="Enter value"
        position="center"
        size={966.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="d268c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="total_funnel_progression"
        label="Total funnel progression"
        placeholder="Enter value"
        position="center"
        size={156.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="54990"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="custID"
        label="Cust id"
        placeholder="Enter value"
        position="center"
        size={69.140625}
        summaryAggregationMode="none"
      />
      <Column
        id="5889a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="state"
        label="State"
        placeholder="Enter value"
        position="center"
        size={46.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="2ead3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="sls_id"
        label="Sls ID"
        placeholder="Select option"
        position="center"
        size={51.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="1bdfa"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="segment"
        label="Segment"
        placeholder="Select option"
        position="center"
        size={145.734375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <ToolbarButton
        id="3c"
        hidden="{{ userAccess.data == false }}"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="dataTable2"
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
          pluginId="dataTable2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="6f7c1"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="viewEditProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="changeFilter"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="DisplayData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="doubleClickRow"
        method="run"
        params={{
          ordered: [{ src: "selected.setValue(dataTable2.selectedRow)" }],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View id="aaa79" viewKey="In">
    <Table
      id="dataTable3"
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ karejoincustforTabbed.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "dee66", direction: "desc" } }]}
      enableSaveActions={true}
      rowHeight="small"
      searchTerm="{{searchFilter.value}}"
      selectedDataIndexes={[]}
      selectedRowKeys={[]}
      selectedRows={[]}
      selectedSourceRows={[]}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      sortArray={[]}
      style={{
        border: "rgb(204, 204, 204)",
        borderRadius: "8px",
        accent: "rgb(70, 166, 124)",
      }}
      templatePageSize={20}
    >
      <Column
        id="26edd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kare_group"
        label="Kare group"
        placeholder="Select option"
        position="left"
        size={79.6875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1151"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sales_id"
        label="Sales ID"
        placeholder="Select option"
        position="left"
        size={62.484375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1759"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="customer_name"
        label="Customer name"
        placeholder="Enter value"
        position="left"
        size={158.171875}
        summaryAggregationMode="none"
      />
      <Column
        id="1ec07"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="project_name"
        label="Project name"
        placeholder="Enter value"
        position="left"
        size={171.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="dee66"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        groupAggregationMode="none"
        hidden="false"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={39.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="9d065"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="project_start_year"
        label="Project start year"
        placeholder="Enter value"
        position="center"
        size={116.375}
        summaryAggregationMode="none"
      />
      <Column
        id="7059f"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="territory"
        label="Territory"
        placeholder="Select option"
        position="center"
        size={66.390625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="9a2a5"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="active_project_year"
        label="Active project year"
        placeholder="Enter value"
        position="center"
        size={125.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="90761"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="funnel_stage"
        label="Funnel stage"
        placeholder="Select option"
        position="center"
        size={90.4375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f3116"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="won_lost"
        label="Status"
        placeholder="Select option"
        position="center"
        size={62.84375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="aeabb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="market"
        label="Market"
        placeholder="Select option"
        position="center"
        size={56.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3c80c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="main_product_target"
        label="Main product target"
        placeholder="Select option"
        position="center"
        size={130.921875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="24130"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="overall_est_opportunity_in_lbs"
        label="Overall est opportunity in lbs"
        placeholder="Enter value"
        position="center"
        size={183.265625}
        summaryAggregationMode="none"
      />
      <Column
        id="d3c69"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="current_customer_volume_in_l_bs"
        label="Current customer volume in l bs"
        placeholder="Enter value"
        position="center"
        size={200.625}
        summaryAggregationMode="none"
      />
      <Column
        id="676c0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_annual_lbs"
        label="Targeted additional annual lbs"
        placeholder="Enter value"
        position="center"
        size={190.75}
        summaryAggregationMode="none"
      />
      <Column
        id="137a3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="taraget_additional_printed_impressions_units"
        label="Taraget additional printed impressions units"
        placeholder="Enter value"
        position="center"
        size={271.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="4e297"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="target_additional_annual_bags"
        label="Target additional annual bags"
        placeholder="Enter value"
        position="center"
        size={187.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="049dd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_landscape_bags"
        label="Targeted additional landscape bags"
        placeholder="Enter value"
        position="center"
        size={223.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="9a98f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="open_new_opportunity_quote"
        label="Open new opportunity quote"
        placeholder="Enter value"
        position="center"
        size={182.78125}
        summaryAggregationMode="none"
      />
      <Column
        id="a3d9d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_desc"
        label="Project desc"
        placeholder="Enter value"
        position="center"
        size={1228.53125}
        summaryAggregationMode="none"
      />
      <Column
        id="d268c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="total_funnel_progression"
        label="Total funnel progression"
        placeholder="Enter value"
        position="center"
        size={156.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="54990"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="custID"
        label="Cust id"
        placeholder="Enter value"
        position="center"
        size={67.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="8d272"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="custID"
        label="Column 23"
        placeholder="Enter value"
        position="center"
        referenceId="column23"
        size={79.8125}
        summaryAggregationMode="none"
        valueOverride="{{ salesCustPros.data.id.find((cust) => cust == currentSourceRow.custID) }}"
      />
      <Column
        id="97f27"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="state"
        label="State"
        placeholder="Enter value"
        position="center"
        size={46.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="21ba1"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sls_id"
        label="Sls ID"
        placeholder="Select option"
        position="center"
        size={51.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="0a57d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="segment"
        label="Segment"
        placeholder="Select option"
        position="center"
        size={145.734375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <ToolbarButton
        id="3c"
        hidden="{{ userAccess.data == false }}"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="dataTable3"
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
          pluginId="dataTable3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="6f7c1"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="viewEditProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="changeFilter"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="DisplayData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="doubleClickRow"
        method="run"
        params={{
          ordered: [{ src: "selected.setValue(dataTable3.selectedRow)" }],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View
    id="0ad6a"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Best Few"
  >
    <Table
      id="dataTable4"
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ karejoincustforTabbed.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "dee66", direction: "desc" } }]}
      enableSaveActions={true}
      rowHeight="small"
      searchTerm="{{searchFilter.value}}"
      selectedDataIndexes={[]}
      selectedRowKeys={[]}
      selectedRows={[]}
      selectedSourceRows={[]}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      sortArray={[]}
      style={{
        border: "rgb(204, 204, 204)",
        borderRadius: "8px",
        accent: "rgb(70, 166, 124)",
      }}
      templatePageSize={20}
    >
      <Column
        id="26edd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kare_group"
        label="Kare group"
        placeholder="Select option"
        position="left"
        size={79.6875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1151"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sales_id"
        label="Sales ID"
        placeholder="Select option"
        position="left"
        size={62.484375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1759"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="customer_name"
        label="Customer name"
        placeholder="Enter value"
        position="left"
        size={224.5}
        summaryAggregationMode="none"
      />
      <Column
        id="1ec07"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="project_name"
        label="Project name"
        placeholder="Enter value"
        position="left"
        size={155.375}
        summaryAggregationMode="none"
      />
      <Column
        id="dee66"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        groupAggregationMode="none"
        hidden="false"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={39.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="9d065"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="project_start_year"
        label="Project start year"
        placeholder="Enter value"
        position="center"
        size={116.375}
        summaryAggregationMode="none"
      />
      <Column
        id="7059f"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="territory"
        label="Territory"
        placeholder="Select option"
        position="center"
        size={66.390625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="9a2a5"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="active_project_year"
        label="Active project year"
        placeholder="Enter value"
        position="center"
        size={125.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="90761"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="funnel_stage"
        label="Funnel stage"
        placeholder="Select option"
        position="center"
        size={90.4375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f3116"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="won_lost"
        label="Status"
        placeholder="Select option"
        position="center"
        size={62.84375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="aeabb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="market"
        label="Market"
        placeholder="Select option"
        position="center"
        size={56.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3c80c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="main_product_target"
        label="Main product target"
        placeholder="Select option"
        position="center"
        size={130.921875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="24130"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="overall_est_opportunity_in_lbs"
        label="Overall est opportunity in lbs"
        placeholder="Enter value"
        position="center"
        size={183.265625}
        summaryAggregationMode="none"
      />
      <Column
        id="d3c69"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="current_customer_volume_in_l_bs"
        label="Current customer volume in l bs"
        placeholder="Enter value"
        position="center"
        size={200.625}
        summaryAggregationMode="none"
      />
      <Column
        id="676c0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_annual_lbs"
        label="Targeted additional annual lbs"
        placeholder="Enter value"
        position="center"
        size={190.75}
        summaryAggregationMode="none"
      />
      <Column
        id="137a3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="taraget_additional_printed_impressions_units"
        label="Taraget additional printed impressions units"
        placeholder="Enter value"
        position="center"
        size={271.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="4e297"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="target_additional_annual_bags"
        label="Target additional annual bags"
        placeholder="Enter value"
        position="center"
        size={187.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="049dd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_landscape_bags"
        label="Targeted additional landscape bags"
        placeholder="Enter value"
        position="center"
        size={223.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="9a98f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="open_new_opportunity_quote"
        label="Open new opportunity quote"
        placeholder="Enter value"
        position="center"
        size={182.78125}
        summaryAggregationMode="none"
      />
      <Column
        id="a3d9d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_desc"
        label="Project desc"
        placeholder="Enter value"
        position="center"
        size={1291}
        summaryAggregationMode="none"
      />
      <Column
        id="d268c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="total_funnel_progression"
        label="Total funnel progression"
        placeholder="Enter value"
        position="center"
        size={156.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="54990"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="custID"
        label="Cust id"
        placeholder="Enter value"
        position="center"
        size={66.6875}
        summaryAggregationMode="none"
      />
      <Column
        id="5889a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="state"
        label="State"
        placeholder="Enter value"
        position="center"
        size={46.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="2ead3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sls_id"
        label="Sls ID"
        placeholder="Select option"
        position="center"
        size={51.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="1bdfa"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="segment"
        label="Segment"
        placeholder="Select option"
        position="center"
        size={145.734375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <ToolbarButton
        id="3c"
        hidden="{{ userAccess.data == false }}"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="dataTable4"
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
          pluginId="dataTable4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="6f7c1"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="viewEditProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="changeFilter"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="DisplayData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="doubleClickRow"
        method="run"
        params={{
          ordered: [{ src: "selected.setValue(dataTable4.selectedRow)" }],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View
    id="2b0cc"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Close"
  >
    <Table
      id="dataTable5"
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ karejoincustforTabbed.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "dee66", direction: "desc" } }]}
      enableSaveActions={true}
      rowHeight="small"
      searchTerm="{{searchFilter.value}}"
      selectedDataIndexes={[]}
      selectedRowKeys={[]}
      selectedRows={[]}
      selectedSourceRows={[]}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      sortArray={[]}
      style={{
        border: "rgb(204, 204, 204)",
        borderRadius: "8px",
        accent: "rgb(70, 166, 124)",
      }}
      templatePageSize={20}
    >
      <Column
        id="26edd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kare_group"
        label="Kare group"
        placeholder="Select option"
        position="left"
        size={79.6875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1151"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sales_id"
        label="Sales ID"
        placeholder="Select option"
        position="left"
        size={62.484375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1759"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="customer_name"
        label="Customer name"
        placeholder="Enter value"
        position="left"
        size={173.421875}
        summaryAggregationMode="none"
      />
      <Column
        id="1ec07"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="project_name"
        label="Project name"
        placeholder="Enter value"
        position="left"
        size={250.59375}
        summaryAggregationMode="none"
      />
      <Column
        id="dee66"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        groupAggregationMode="none"
        hidden="false"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={39.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="9d065"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="project_start_year"
        label="Project start year"
        placeholder="Enter value"
        position="center"
        size={116.375}
        summaryAggregationMode="none"
      />
      <Column
        id="7059f"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="territory"
        label="Territory"
        placeholder="Select option"
        position="center"
        size={66.390625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="9a2a5"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="active_project_year"
        label="Active project year"
        placeholder="Enter value"
        position="center"
        size={125.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="90761"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="funnel_stage"
        label="Funnel stage"
        placeholder="Select option"
        position="center"
        size={90.4375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f3116"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="won_lost"
        label="Status"
        placeholder="Select option"
        position="center"
        size={62.84375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="aeabb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="market"
        label="Market"
        placeholder="Select option"
        position="center"
        size={56.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3c80c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="main_product_target"
        label="Main product target"
        placeholder="Select option"
        position="center"
        size={130.921875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="24130"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="overall_est_opportunity_in_lbs"
        label="Overall est opportunity in lbs"
        placeholder="Enter value"
        position="center"
        size={183.265625}
        summaryAggregationMode="none"
      />
      <Column
        id="d3c69"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="current_customer_volume_in_l_bs"
        label="Current customer volume in l bs"
        placeholder="Enter value"
        position="center"
        size={200.625}
        summaryAggregationMode="none"
      />
      <Column
        id="676c0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_annual_lbs"
        label="Targeted additional annual lbs"
        placeholder="Enter value"
        position="center"
        size={190.75}
        summaryAggregationMode="none"
      />
      <Column
        id="137a3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="taraget_additional_printed_impressions_units"
        label="Taraget additional printed impressions units"
        placeholder="Enter value"
        position="center"
        size={271.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="4e297"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="target_additional_annual_bags"
        label="Target additional annual bags"
        placeholder="Enter value"
        position="center"
        size={187.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="049dd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_landscape_bags"
        label="Targeted additional landscape bags"
        placeholder="Enter value"
        position="center"
        size={223.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="9a98f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="open_new_opportunity_quote"
        label="Open new opportunity quote"
        placeholder="Enter value"
        position="center"
        size={182.78125}
        summaryAggregationMode="none"
      />
      <Column
        id="a3d9d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_desc"
        label="Project desc"
        placeholder="Enter value"
        position="center"
        size={1291}
        summaryAggregationMode="none"
      />
      <Column
        id="d268c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="total_funnel_progression"
        label="Total funnel progression"
        placeholder="Enter value"
        position="center"
        size={156.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="54990"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="custID"
        label="Cust id"
        placeholder="Enter value"
        position="center"
        size={67.5625}
        summaryAggregationMode="none"
      />
      <Column
        id="5889a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="state"
        label="State"
        placeholder="Enter value"
        position="center"
        size={46.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="2ead3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sls_id"
        label="Sls ID"
        placeholder="Select option"
        position="center"
        size={51.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="1bdfa"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="segment"
        label="Segment"
        placeholder="Select option"
        position="center"
        size={145.734375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <ToolbarButton
        id="3c"
        hidden="{{ userAccess.data == false }}"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="dataTable5"
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
          pluginId="dataTable5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="6f7c1"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="viewEditProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="changeFilter"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="DisplayData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="doubleClickRow"
        method="run"
        params={{
          ordered: [{ src: "selected.setValue(dataTable5.selectedRow)" }],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View
    id="0f88e"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Won
"
  >
    <Table
      id="dataTable6"
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ karejoincustforTabbed.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "dee66", direction: "desc" } }]}
      enableSaveActions={true}
      rowHeight="small"
      searchTerm="{{searchFilter.value}}"
      selectedDataIndexes={[]}
      selectedRowKeys={[]}
      selectedRows={[]}
      selectedSourceRows={[]}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      sortArray={[]}
      style={{
        border: "rgb(204, 204, 204)",
        borderRadius: "8px",
        accent: "rgb(70, 166, 124)",
      }}
      templatePageSize={20}
    >
      <Column
        id="26edd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kare_group"
        label="Kare group"
        placeholder="Select option"
        position="left"
        size={79.6875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1151"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sales_id"
        label="Sales ID"
        placeholder="Select option"
        position="left"
        size={62.484375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1759"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="customer_name"
        label="Customer name"
        placeholder="Enter value"
        position="left"
        size={224.5}
        summaryAggregationMode="none"
      />
      <Column
        id="1ec07"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="project_name"
        label="Project name"
        placeholder="Enter value"
        position="left"
        size={250.59375}
        summaryAggregationMode="none"
      />
      <Column
        id="dee66"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        groupAggregationMode="none"
        hidden="false"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={39.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="9d065"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="project_start_year"
        label="Project start year"
        placeholder="Enter value"
        position="center"
        size={116.375}
        summaryAggregationMode="none"
      />
      <Column
        id="7059f"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="territory"
        label="Territory"
        placeholder="Select option"
        position="center"
        size={66.390625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="9a2a5"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="active_project_year"
        label="Active project year"
        placeholder="Enter value"
        position="center"
        size={125.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="90761"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="funnel_stage"
        label="Funnel stage"
        placeholder="Select option"
        position="center"
        size={90.4375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f3116"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="won_lost"
        label="Status"
        placeholder="Select option"
        position="center"
        size={57.5}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="aeabb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="market"
        label="Market"
        placeholder="Select option"
        position="center"
        size={56.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3c80c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="main_product_target"
        label="Main product target"
        placeholder="Select option"
        position="center"
        size={130.921875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="24130"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="overall_est_opportunity_in_lbs"
        label="Overall est opportunity in lbs"
        placeholder="Enter value"
        position="center"
        size={183.265625}
        summaryAggregationMode="none"
      />
      <Column
        id="d3c69"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="current_customer_volume_in_l_bs"
        label="Current customer volume in l bs"
        placeholder="Enter value"
        position="center"
        size={200.625}
        summaryAggregationMode="none"
      />
      <Column
        id="676c0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_annual_lbs"
        label="Targeted additional annual lbs"
        placeholder="Enter value"
        position="center"
        size={190.75}
        summaryAggregationMode="none"
      />
      <Column
        id="137a3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="taraget_additional_printed_impressions_units"
        label="Taraget additional printed impressions units"
        placeholder="Enter value"
        position="center"
        size={271.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="4e297"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="target_additional_annual_bags"
        label="Target additional annual bags"
        placeholder="Enter value"
        position="center"
        size={187.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="049dd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_landscape_bags"
        label="Targeted additional landscape bags"
        placeholder="Enter value"
        position="center"
        size={223.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="9a98f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="open_new_opportunity_quote"
        label="Open new opportunity quote"
        placeholder="Enter value"
        position="center"
        size={182.78125}
        summaryAggregationMode="none"
      />
      <Column
        id="a3d9d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_desc"
        label="Project desc"
        placeholder="Enter value"
        position="center"
        size={1266.3125}
        summaryAggregationMode="none"
      />
      <Column
        id="d268c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="total_funnel_progression"
        label="Total funnel progression"
        placeholder="Enter value"
        position="center"
        size={156.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="54990"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="custID"
        label="Cust id"
        placeholder="Enter value"
        position="center"
        size={67.421875}
        summaryAggregationMode="none"
      />
      <Column
        id="5889a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="state"
        label="State"
        placeholder="Enter value"
        position="center"
        size={46.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="2ead3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sls_id"
        label="Sls ID"
        placeholder="Select option"
        position="center"
        size={51.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="1bdfa"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="segment"
        label="Segment"
        placeholder="Select option"
        position="center"
        size={145.734375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <ToolbarButton
        id="3c"
        hidden="{{ userAccess.data == false }}"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="dataTable6"
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
          pluginId="dataTable6"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="6f7c1"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="viewEditProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="changeFilter"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="DisplayData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="doubleClickRow"
        method="run"
        params={{
          ordered: [{ src: "selected.setValue(dataTable6.selectedRow)" }],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View
    id="d174c"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Lost"
  >
    <Table
      id="dataTable7"
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ karejoincustforTabbed.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "dee66", direction: "desc" } }]}
      enableSaveActions={true}
      rowHeight="small"
      searchTerm="{{searchFilter.value}}"
      selectedDataIndexes={[]}
      selectedRowKeys={[]}
      selectedRows={[]}
      selectedSourceRows={[]}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      sortArray={[]}
      style={{
        border: "rgb(204, 204, 204)",
        borderRadius: "8px",
        accent: "rgb(70, 166, 124)",
      }}
      templatePageSize={20}
    >
      <Column
        id="26edd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kare_group"
        label="Kare group"
        placeholder="Select option"
        position="left"
        size={79.6875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1151"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sales_id"
        label="Sales ID"
        placeholder="Select option"
        position="left"
        size={62.484375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d1759"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="customer_name"
        label="Customer name"
        placeholder="Enter value"
        position="left"
        size={195.984375}
        summaryAggregationMode="none"
      />
      <Column
        id="1ec07"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="project_name"
        label="Project name"
        placeholder="Enter value"
        position="left"
        size={225.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="dee66"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        groupAggregationMode="none"
        hidden="false"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={39.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="9d065"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="project_start_year"
        label="Project start year"
        placeholder="Enter value"
        position="center"
        size={116.375}
        summaryAggregationMode="none"
      />
      <Column
        id="7059f"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="territory"
        label="Territory"
        placeholder="Select option"
        position="center"
        size={66.390625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="9a2a5"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="active_project_year"
        label="Active project year"
        placeholder="Enter value"
        position="center"
        size={125.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="90761"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="funnel_stage"
        label="Funnel stage"
        placeholder="Select option"
        position="center"
        size={90.4375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f3116"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="won_lost"
        label="Status"
        placeholder="Select option"
        position="center"
        size={56.890625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="aeabb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="market"
        label="Market"
        placeholder="Select option"
        position="center"
        size={56.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3c80c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="main_product_target"
        label="Main product target"
        placeholder="Select option"
        position="center"
        size={130.921875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="24130"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="overall_est_opportunity_in_lbs"
        label="Overall est opportunity in lbs"
        placeholder="Enter value"
        position="center"
        size={183.265625}
        summaryAggregationMode="none"
      />
      <Column
        id="d3c69"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="current_customer_volume_in_l_bs"
        label="Current customer volume in l bs"
        placeholder="Enter value"
        position="center"
        size={200.625}
        summaryAggregationMode="none"
      />
      <Column
        id="676c0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_annual_lbs"
        label="Targeted additional annual lbs"
        placeholder="Enter value"
        position="center"
        size={190.75}
        summaryAggregationMode="none"
      />
      <Column
        id="137a3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="taraget_additional_printed_impressions_units"
        label="Taraget additional printed impressions units"
        placeholder="Enter value"
        position="center"
        size={271.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="4e297"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="target_additional_annual_bags"
        label="Target additional annual bags"
        placeholder="Enter value"
        position="center"
        size={187.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="049dd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="targeted_additional_landscape_bags"
        label="Targeted additional landscape bags"
        placeholder="Enter value"
        position="center"
        size={223.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="9a98f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="open_new_opportunity_quote"
        label="Open new opportunity quote"
        placeholder="Enter value"
        position="center"
        size={182.78125}
        summaryAggregationMode="none"
      />
      <Column
        id="a3d9d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_desc"
        label="Project desc"
        placeholder="Enter value"
        position="center"
        size={679.125}
        summaryAggregationMode="none"
      />
      <Column
        id="d268c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="total_funnel_progression"
        label="Total funnel progression"
        placeholder="Enter value"
        position="center"
        size={156.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="54990"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="custID"
        label="Cust id"
        placeholder="Enter value"
        position="center"
        size={70.15625}
        summaryAggregationMode="none"
      />
      <Column
        id="5889a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="state"
        label="State"
        placeholder="Enter value"
        position="center"
        size={46.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="2ead3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sls_id"
        label="Sls ID"
        placeholder="Select option"
        position="center"
        size={51.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="1bdfa"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="segment"
        label="Segment"
        placeholder="Select option"
        position="center"
        size={150.875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <ToolbarButton
        id="3c"
        hidden="{{ userAccess.data == false }}"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="dataTable7"
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
          pluginId="dataTable7"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="6f7c1"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="viewEditProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="changeFilter"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="DisplayData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="doubleClickRow"
        method="run"
        params={{
          ordered: [{ src: "selected.setValue(dataTable7.selectedRow)" }],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <Event
    event="change"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="DisplayData"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</Container>
