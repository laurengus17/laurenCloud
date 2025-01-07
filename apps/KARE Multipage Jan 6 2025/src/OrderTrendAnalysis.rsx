<Screen
  id="OrderTrendAnalysis"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Order Trend Analysis"
  urlSlug="OrderTrendAnalysis"
>
  <WorkflowRun
    id="Gatherdata"
    enableMockResponseTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    resourceName="WorkflowRun"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType="run-workflow"
    workflowBlockUuid={null}
    workflowId="2723ce39-9d7f-49fa-ba0d-05071be5a482"
    workflowRunBodyType="json"
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="Orders"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </WorkflowRun>
  <SqlQueryUnified
    id="Orders"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/Orders.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="filteredD"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <JavascriptQuery
    id="DisplayD"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("../lib/DisplayD.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="filteredD"
    enableMockResponseTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/filteredD.sql", "string")}
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="DisplayD"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlTransformQuery>
  <Function
    id="grpSwitch"
    funcBody={include("../lib/grpSwitch.js", "string")}
  />
  <Function
    id="chartFormat"
    funcBody={include("../lib/chartFormat.js", "string")}
  />
  <Include src="./header3.rsx" />
  <Include src="./modalFrame7.rsx" />
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    style={{ ordered: [] }}
    type="main"
  >
    <Button id="button7" text="Gather Data (May Take 2 mins)">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="Gatherdata"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text1"
      value="Data Is gathered every day at 12AM"
      verticalAlign="center"
    />
    <Container
      id="collapsibleContainer6"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden=""
      padding="12px"
      showHeader={true}
    >
      <Header>
        <Text
          id="collapsibleTitle6"
          value="#### Chart"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle6"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Show' : 'Hide' }}"
          value="{{false}}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="collapsibleContainer6"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="d2f06" viewKey="View 1">
        <PlotlyChart
          id="chart1"
          chartType="line"
          data={include("../lib/chart1.data.json", "string")}
          dataseries={{
            ordered: [
              {
                5: {
                  ordered: [
                    { label: "lbs" },
                    {
                      datasource:
                        "{{formatDataAsObject(DisplayD.data)['lbs']}}",
                    },
                    { chartType: "line" },
                    { aggregationType: "sum" },
                    { color: "#1E3A8A" },
                    { colors: { ordered: [] } },
                    { visible: true },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
            ],
          }}
          datasourceDataType="array"
          datasourceJS="{{DisplayD.data}}"
          datasourcePluginId="query12"
          datasourcePluginType="plugin"
          events={[]}
          groupByDropdown="Slsm"
          groupByJS="{{formatDataAsObject(DisplayD.data)['Slsm']}}"
          groupByMode="javascript"
          isDataTemplateDirty={true}
          isJsonTemplateDirty={true}
          isLayoutJsonDirty={true}
          layout={include("../lib/chart1.layout.json", "string")}
          legendAlignment="right"
          margin="4px 8px"
          skipDatasourceUpdate={true}
          xAxis="{{formatDataAsObject(DisplayD.data)['monthYear']}}"
          xAxisDropdown="monthYear"
          xAxisTitle="Date"
          xAxisType="date"
          yAxisTitle="LBS"
        />
      </View>
    </Container>
    <Form
      id="form6"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text id="formTitle7" value="#### Filters" verticalAlign="center" />
      </Header>
      <Body>
        <Multiselect
          id="multiselect1"
          data="{{ Orders.data }}"
          emptyMessage="No options"
          label="Customers"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select options"
          showSelectionIndicator={true}
          values="{{ item.CustNum }}"
          wrapTags={true}
        />
        <Select
          id="select1"
          data={'["Bar", "Line"]'}
          emptyMessage="No options"
          label="Chart Type"
          labelPosition="top"
          labels="{{item}}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="1"
          values="{{i}}"
        />
        <Switch id="switch2" label="Group by Sales Person" />
      </Body>
      <Footer>
        <Button
          id="formButton8"
          submit={true}
          submitTargetId="form6"
          text="Load Chart"
        />
      </Footer>
      <Event
        event="submit"
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
        pluginId="DisplayD"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="setShowBody"
        params={{ ordered: [{ showBody: true }] }}
        pluginId="collapsibleContainer6"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Table
      id="table11"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ filteredD.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ background: "rgb(61, 23, 23)" }}
      toolbarPosition="bottom"
    >
      <Column
        id="e6fd5"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="sum"
        key="OrderNum"
        label="Order num"
        placeholder="Select option"
        position="center"
        size={75.390625}
        summaryAggregationMode="none"
      />
      <Column
        id="bcac2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Item"
        label="Item"
        placeholder="Enter value"
        position="center"
        size={114.140625}
        summaryAggregationMode="none"
      />
      <Column
        id="f9be1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Qty"
        label="Qty"
        placeholder="Enter value"
        position="center"
        size={66.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="7a47e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="ProdClass"
        label="Prod class"
        placeholder="Enter value"
        position="center"
        size={70.4375}
        summaryAggregationMode="none"
      />
      <Column
        id="d06d6"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Uom"
        label="Uom"
        placeholder="Select option"
        position="center"
        size={53.359375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="c5965"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="multilineString"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Ordered"
        label="Ordered"
        placeholder="Enter value"
        position="center"
        size={60.953125}
        summaryAggregationMode="none"
      />
      <Column
        id="5c41b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Slsm"
        label="Slsm"
        placeholder="Select option"
        position="center"
        size={48.484375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="2acbe"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="m"
        label="M"
        placeholder="Enter value"
        position="center"
        size={50.953125}
        summaryAggregationMode="none"
      />
      <Column
        id="c45de"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="CustNum"
        label="Cust num"
        placeholder="Select option"
        position="center"
        size={81.28125}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="80e00"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={241.9375}
        summaryAggregationMode="none"
      />
      <Column
        id="75317"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Qty"
        label="Lbs"
        placeholder="Enter value"
        position="center"
        referenceId="lbs"
        size={72.953125}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.Qty/1000 * currentSourceRow.m }}"
      />
      <Column
        id="d2b55"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="date"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          dateFormat: "MM/yyyy",
        }}
        groupAggregationMode="sum"
        key="Ordered"
        label="Month/Year ODR"
        placeholder="Enter value"
        position="center"
        referenceId="Month/Year ODR"
        size={108.9375}
        summaryAggregationMode="none"
        valueOverride={
          "{{moment(currentSourceRow.Ordered, \"MMDYY\").format('MM-DD-YYYY')}}"
        }
      />
      <Column
        id="39a5c"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="date"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          dateFormat: "",
        }}
        groupAggregationMode="sum"
        hidden="true"
        key="Ordered"
        label="monthYear"
        placeholder="Enter value"
        position="center"
        referenceId="monthYear"
        size={85.046875}
        summaryAggregationMode="none"
        valueOverride={
          "{{moment(currentSourceRow.Ordered, \"MMDYY\").format('YYYY-MM')}}"
        }
      />
      <Column
        id="45ed1"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="OrdType"
        label="Ord type"
        placeholder="Select option"
        position="center"
        size={63.984375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="8290d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Hstatus"
        label="Hstatus"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="e3d95"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Lstatus"
        label="Lstatus"
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
          pluginId="table11"
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
          pluginId="table11"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
