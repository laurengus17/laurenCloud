<Screen
  id="CustDash"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Customer Dashboard"
  urlSlug="CustDash"
>
  <SqlQueryUnified
    id="Cust"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/Cust.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="switchLabel"
    notificationDuration={4.5}
    query={include("../lib/switchLabel.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="CSR"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/CSR.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenPageLoadsDelay="3"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="stratProfile"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/stratProfile.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="Univ"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/Univ.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="kare2"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/kare2.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SMTPQuery
    id="newcustEmail"
    body={
      '<p><img src="https://i.imgur.com/Um2KKaw.png" alt="" width="816" height="210">&nbsp;</p>\n<h1>New Customer</h1>\n<h2>Customer Details</h2>\n<p><strong>ID</strong></p>\n<p>{{id?.value}}</p>\n<p><strong>Account Name</strong></p>\n<p>{{account_name?.value}}</p>\n<p><strong>Address</strong></p>\n<p>{{address?.value}}</p>\n<p><strong>Address2</strong></p>\n<p>{{address2?.value}}</p>\n<p><strong>City</strong></p>\n<p>{{city?.value}}</p>\n<p><strong>State</strong></p>\n<p>{{state?.value}}</p>\n<p><strong>Zip</strong></p>\n<p>{{zip?.value}}</p>\n<p><strong>Sales ID</strong></p>\n<p>{{sls_id?.value}}</p>\n<p><strong>Date on File</strong></p>\n<p>{{date_on_file?.value}}<br><strong>Approved</strong></p>\n<p>{{approved?.value}}</p>\n<p><strong>Segment</strong></p>\n<p>{{segment?.value}}</p>\n<p>&nbsp;</p>\n<p><img src="https://i.imgur.com/YtahQyk.png" alt="" width="816" height="290"></p>'
    }
    bodyType="html"
    clonedDemoResourceType="retoolEmail"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    replyToEmail="{{ current_user.email }}"
    resourceDisplayName="retool_email"
    resourceName="retool_email"
    showReplyTo={true}
    showSuccessToaster={false}
    subject="Please add this new Customer to DL4 {{ account_name?.value }}"
    toEmail="{{ csr.selectedItem?.email }}"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="segmentidDB"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/segmentidDB.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="companyNameT"
    funcBody={include("../lib/companyNameT.js", "string")}
  />
  <SqlQueryUnified
    id="custContact"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/custContact.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updateStratProfile"
    actionType="UPDATE_OR_INSERT_BY"
    changeset={
      '[{"key":"stratFit","value":"{{ stratFit?.value }}"},{"key":"ppiStrgth","value":"{{ ppiStrgth?.value }}"},{"key":"compExistCust","value":"{{ compExistCust?.value }}"},{"key":"rchc","value":"{{ rchc?.value }}"},{"key":"currentSup","value":"{{ currentSup?.value }}"},{"key":"kpainP","value":"{{ kpainP?.value }}"},{"key":"ppiwknss","value":"{{ ppiwknss?.value }}"}]'
    }
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    filterBy={
      '[{"key":"customerID","value":"{{ table2.selectedRow?.id }}","operation":"="}]'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/updateStratProfile.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="stratProfile"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="stratProfile"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Saved" },
                { description: "Data Saved" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateacknowledge2"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"acknowledged","value":"{{ table18.changesetArray[\'0\']?.acknowledged }}"}]'
    }
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"id","value":"{{ table18.selectedRow?.id }}","operation":"="}]'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="salescustpros"
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
      pluginId="Cust2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SMTPQuery
    id="support"
    body="User: {{ current_user.email }}"
    clonedDemoResourceType="retoolEmail"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    resourceDisplayName="retool_email"
    resourceName="retool_email"
    subject="Customer Dash Submit Error"
    toEmail="support@packagingpersonified.com"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="editRow"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"id","value":"{{ editID?.value }}"},{"key":"account_name","value":"{{ editAccountname?.value }}"},{"key":"address","value":"{{ editAddress?.value }}"},{"key":"address2","value":"{{ editAddress2?.value }}"},{"key":"city","value":"{{ editCity?.value }}"},{"key":"state","value":"{{ editState?.value }}"},{"key":"zip","value":"{{ editZip?.value }}"},{"key":"last_order","value":"{{ editLO?.value }}"},{"key":"approved","value":"{{ editApproved?.value }}"},{"key":"date_on_file","value":"{{ editDOF?.value }}"},{"key":"segment","value":"{{ editSegment?.value }}"},{"key":"csr","value":"{{ editCsr?.value }}"},{"key":"sls_id","value":"{{ editsls?.value }}"},{"key":"ty_ue","value":"{{ editType?.value }}"},{"key":"status","value":"{{ editStatus?.value }}"}]'
    }
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    filterBy={'[{"key":"id","value":"{{ editID?.value }}","operation":"="}]'}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    tableName="salescustpros"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="Cust"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="Univ"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="hide"
      params={{ ordered: [] }}
      pluginId="modalFrame2"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="SP2"
    clonedDemoResourceType="mssql"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/SP2.sql", "string")}
    resourceName="9db79853-31f4-4303-8cc5-060a414ac93b"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="updateContact"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"email","value":"{{ cEmail?.value }}"},{"key":"title","value":"{{ titleA?.value }}"},{"key":"contactName","value":"{{ contactName?.value }}"},{"key":"phoneNumberA","value":"{{ phoneNumberA?.value }}"},{"key":"active","value":"{{ cActive?.value }}"},{"key":"note","value":"{{ cNote?.value }}"},{"key":"address","value":"{{ cAddress?.value }}"},{"key":"phoneNumberB","value":"{{ phoneNumberB }}"}]'
    }
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    filterBy={
      '[{"key":"id","value":"{{ table9.selectedRow?.id }}","operation":"="}]'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    tableName="customerContacts"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="custContact"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="hide"
      params={{ ordered: [] }}
      pluginId="modalFrame3"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Function
    id="transformer1"
    funcBody={include("../lib/transformer1.js", "string")}
  />
  <SqlQueryUnified
    id="addRow"
    actionType="INSERT"
    changeset={
      '[{"key":"id","value":"{{ id.value?.toUpperCase() }}"},{"key":"account_name","value":"{{ account_name?.value }}"},{"key":"address","value":"{{ address?.value }}"},{"key":"address2","value":"{{ address2?.value }}"},{"key":"city","value":"{{ city?.value }}"},{"key":"state","value":"{{ state?.value }}"},{"key":"zip","value":"{{ zip?.value }}"},{"key":"approved","value":"{{ approved?.value }}"},{"key":"date_on_file","value":"{{ date_on_file?.value }}"},{"key":"segment","value":"{{ segment?.value }}"},{"key":"csr","value":"{{ csr.selectedItem?.Csr }}"},{"key":"sls_id","value":"{{ sls_id?.value }}"},{"key":"ty_ue","value":"{{ ty_ue?.value }}"},{"key":"status","value":"{{ status3?.value }}"}]'
    }
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    tableName="salescustpros"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="Cust"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="Univ"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Customer Added!" },
                { description: "Customer Added to List" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="hide"
      params={{ ordered: [] }}
      pluginId="modalFrame6"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clear"
      params={{ ordered: [] }}
      pluginId="form1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="table2"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="table3"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "info" },
                { title: "Error" },
                { description: "An Error accured. IT has Been Notified" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="support"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="newCContact"
    actionType="INSERT"
    changeset={
      '[{"key":"customerID","value":"{{ ncCustomer?.value }}"},{"key":"email","value":"{{ cEmail2?.value }}"},{"key":"contactName","value":"{{ contactName2?.value }}"},{"key":"title","value":"{{ titleA2?.value }}"},{"key":"phoneNumberA","value":"{{ phoneNumberA2?.value }}"},{"key":"phoneNumberB","value":"{{ phoneNumberB2?.value }}"},{"key":"address","value":"{{ cAddress2?.value }}"},{"key":"note","value":"{{ cNote2?.value }}"}]'
    }
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    tableName="customerContacts"
  >
    <Event
      event="success"
      method="hide"
      params={{ ordered: [] }}
      pluginId="modalFrame4"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="custContact"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="Cust2"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/Cust2.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="companyNameTaken"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/companyNameTaken.sql", "string")}
    resourceName="SQL Transforms"
  />
  <State id="selectedTableValue" />
  <SqlTransformQuery
    id="admincustUpdates"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/admincustUpdates.sql", "string")}
    resourceName="SQL Transforms"
  />
  <Include src="./header2.rsx" />
  <Include src="./modalFrame2.rsx" />
  <Include src="./modalFrame3.rsx" />
  <Include src="./modalFrame4.rsx" />
  <Include src="./modalFrame5.rsx" />
  <Include src="./modalFrame6.rsx" />
  <Include src="./projectModal.rsx" />
  <Frame
    id="$main2"
    _disclosedFields={{ array: [] }}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <TextInput
      id="searchFilter2"
      _disclosedFields={["iconBefore"]}
      hideLabel={true}
      iconBefore="bold/interface-search"
      marginType="normal"
      placeholder="Search by name"
    />
    <Container
      id="tabbedContainer3"
      _gap={0}
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ background: "secondary" }] }}
    >
      <Header>
        <Tabs
          id="tabs3"
          itemMode="static"
          navigateContainer={true}
          style={{ ordered: [{ fontSize: "h4Font" }] }}
          targetContainerId="tabbedContainer3"
          value="{{ self.values[0] }}"
        >
          <Option id="3863d" value="Tab 1" />
          <Option id="998d9" value="Tab 2" />
          <Option id="e31d8" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="c3e96" viewKey="Customers">
        <Table
          id="table2"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ Cust.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="5a0c3"
          rowHeight="small"
          searchTerm="{{ searchFilter2.value }}"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="5a0c3"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a6bec"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="ty_ue"
            label="Ty ue"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="17a23"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="account_name"
            label="Account name"
            placeholder="Enter value"
            position="center"
            size={185}
            summaryAggregationMode="none"
          />
          <Column
            id="e802b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="address"
            label="Address"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="195f3"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="address2"
            label="Address 2"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="b614b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="city"
            label="City"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="f0aea"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="state"
            label="State"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="35118"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: false, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="zip"
            label="Zip"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a29b0"
            alignment="left"
            editableOptions={{ showStepper: true }}
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="sum"
            hidden="true"
            key="sls_id"
            label="Sls ID"
            placeholder="Select option"
            position="center"
            size={76}
            summaryAggregationMode="none"
          />
          <Column
            id="d86a2"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="csr"
            label="Csr"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="c6a59"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="segment"
            label="Segment"
            placeholder="Select option"
            position="center"
            size={174}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="f19bb"
            alignment="left"
            format="date"
            groupAggregationMode="none"
            hidden="true"
            key="date_on_file"
            label="Date on file"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="b7f1b"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="approved"
            label="Approved"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="534b5"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="last_order"
            label="Last order"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="9f904"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="status"
            label="Status"
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
              pluginId="table2"
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
              pluginId="table2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            event="doubleClickRow"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalFrame2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="doubleClickRow"
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
            pluginId="switchLabel"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="doubleClickRow"
            method="run"
            params={{
              ordered: [
                { src: "selectedTableValue.setValue(table2.selectedRow)" },
              ],
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
      <View id="3f527" viewKey="Universals">
        <Table
          id="table3"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ Univ.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="fb766"
          rowHeight="small"
          searchTerm="{{ searchFilter2.value }}"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="fb766"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="7ce0f"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="ty_ue"
            label="Ty ue"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="39eba"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="account_name"
            label="Account name"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="28703"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="address"
            label="Address"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="b4321"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="address2"
            label="Address 2"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="6e6e9"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="city"
            label="City"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="12bd9"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="state"
            label="State"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="3eaa0"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="zip"
            label="Zip"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="e7ffb"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="sls_id"
            label="Sls ID"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="b9c94"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="csr"
            label="Csr"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="c2ffb"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="segment"
            label="Segment"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="cd30d"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="date_on_file"
            label="Date on file"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="ceff0"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="approved"
            label="Approved"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="933f8"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="last_order"
            label="Last order"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="3bf8e"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="status"
            label="Status"
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
              pluginId="table3"
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
              pluginId="table3"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            event="doubleClickRow"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalFrame2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="doubleClickRow"
            method="run"
            params={{
              ordered: [
                { src: "selectedTableValue.setValue(table3.selectedRow)" },
              ],
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Button id="button4" text="Add Customer">
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame6"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <KeyValue
      id="keyValue1"
      data="{{ transformer1.value }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="id"
        editable="false"
        editableOptions={{}}
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="ID"
      />
      <Property
        id="ty_ue"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Ty ue"
      />
      <Property
        id="account_name"
        editable="false"
        editableOptions={{}}
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Account name"
      />
    </KeyValue>
    <Container
      id="collapsibleContainer7"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ UAvariable.value == false}}"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="collapsibleTitle7"
          value="#### Admin Open Updates"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle7"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ collapsibleContainer7.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="collapsibleContainer7"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
        <Table
          id="table18"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ admincustUpdates.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          primaryKeyColumnId="d14ed"
          rowHeight="small"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          style={{}}
          toolbarPosition="bottom"
        >
          <Column
            id="25dda"
            alignment="left"
            editable="true"
            editableOptions={{ alwaysShowCheckboxes: true }}
            format="boolean"
            groupAggregationMode="none"
            key="acknowledged"
            label="Acknowledged"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="d14ed"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a9fc5"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="ty_ue"
            label="Ty ue"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="d10ad"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="account_name"
            label="Account name"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="e6de8"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="address"
            label="Address"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="d6875"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="address2"
            label="Address 2"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="8bd9c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="city"
            label="City"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="75abf"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="state"
            label="State"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="4df96"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="zip"
            label="Zip"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="738ae"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="sls_id"
            label="Sls ID"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="aa1e3"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="csr"
            label="Csr"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="d6dd2"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="segment"
            label="Segment"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="3bb26"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="date_on_file"
            label="Date on file"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="81a06"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="approved"
            label="Approved"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="c0753"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="last_order"
            label="Last order"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="48d2c"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="status"
            label="Status"
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
              pluginId="table18"
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
              pluginId="table18"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            event="changeCell"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updateacknowledge2"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </Header>
      <View id="d0b2f" viewKey="View 1" />
    </Container>
  </Frame>
</Screen>
