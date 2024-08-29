<Container
  id="exclusionsMainContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="normal"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="exclusionFormTitle"
      marginType="normal"
      value="#### Service Provider Exclusion"
      verticalAlign="center"
    />
    <Button
      id="addExclusionButton"
      style={{ ordered: [] }}
      text="Add Exclusion"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="addExclusionModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="isSaveDisabled"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="fa6af" viewKey="View 1">
    <Container
      id="entitiesContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ exclusionsTableContent.value.excludedEntities.length === 0 }}"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text id="entitiesHeader" value="##### Entity" verticalAlign="center" />
      </Header>
      <View id="5bf63" viewKey="View 1">
        <Table
          id="entitiesTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ exclusionsTableContent.value.excludedEntities }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="f8e7d"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="f8e7d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a7652"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="name"
            label="Entity Name"
            placeholder="Enter value"
            position="center"
            size={338}
            summaryAggregationMode="none"
          />
          <Column
            id="0c280"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            label="Excluded By"
            placeholder="Select option"
            position="center"
            referenceId="excludedBy"
            size={413}
            summaryAggregationMode="none"
            valueOverride="Admin"
          />
          <Column
            id="420fc"
            alignment="left"
            format="button"
            formatOptions={{
              variant: "solid",
              iconBefore: "",
              buttonColor: "rgb(255, 0, 0)",
              iconAfter: "bold/interface-delete-bin-1",
            }}
            groupAggregationMode="none"
            placeholder="Enter value"
            position="right"
            referenceId="entityId"
            size={100}
            sortMode="disabled"
            summaryAggregationMode="none"
            valueOverride=" Delete"
          >
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deleteEntity"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="getSummaryTrigger"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
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
              pluginId="entitiesTable"
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
              pluginId="entitiesTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Container
      id="noExclusionsPlaceholder"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{!isContentEmpty.value}}"
      margin="0px"
      padding="0px"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="a9971" viewKey="View 1">
        <Text
          id="noExclusionsHeader"
          horizontalAlign="center"
          value="##### You have not created any exclusions yet"
          verticalAlign="center"
        />
        <Text
          id="noExclusionsText"
          horizontalAlign="center"
          value="Click the 'Add exclusion' button on the top right to get started"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="clientsContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ exclusionsTableContent.value.excludedClients.length === 0 }}"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text id="clientsHeader" value="##### Clients" verticalAlign="center" />
      </Header>
      <View id="5bf63" viewKey="View 1">
        <Table
          id="clientsTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ exclusionsTableContent.value.excludedClients }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="f8e7d"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="f8e7d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a7652"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="name"
            label="Client Name"
            placeholder="Enter value"
            position="center"
            size={338}
            summaryAggregationMode="none"
          />
          <Column
            id="0c280"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            label="Excluded By"
            placeholder="Select option"
            position="center"
            referenceId="excludedBy"
            size={473}
            summaryAggregationMode="none"
            valueOverride="Admin"
          />
          <Column
            id="c1e5f"
            alignment="left"
            format="button"
            formatOptions={{
              variant: "solid",
              buttonColor: "rgb(255, 0, 0)",
              iconBefore: "",
              iconAfter: "bold/interface-delete-bin-1",
            }}
            groupAggregationMode="none"
            placeholder="Enter value"
            position="right"
            referenceId="clientId"
            size={100}
            sortMode="disabled"
            summaryAggregationMode="none"
            valueOverride="Delete"
          >
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deleteClient"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="getSummaryTrigger"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
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
              pluginId="clientsTable"
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
              pluginId="clientsTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Container
      id="brandsContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ exclusionsTableContent.value.excludedBrands.length === 0 }}"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text id="clientsHeader2" value="##### Brands" verticalAlign="center" />
      </Header>
      <View id="5bf63" viewKey="View 1">
        <Table
          id="brandsTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ exclusionsTableContent.value.excludedBrands }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="f8e7d"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="f8e7d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a7652"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="name"
            label="Brand Name"
            placeholder="Enter value"
            position="center"
            size={338}
            summaryAggregationMode="none"
          />
          <Column
            id="0c280"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            label="Excluded By"
            placeholder="Select option"
            position="center"
            referenceId="excludedBy"
            size={462}
            summaryAggregationMode="none"
            valueOverride="Admin"
          />
          <Column
            id="d58d6"
            alignment="left"
            format="button"
            formatOptions={{
              variant: "solid",
              iconAfter: "bold/interface-delete-bin-1",
              buttonColor: "rgb(255, 0, 0)",
            }}
            groupAggregationMode="none"
            placeholder="Enter value"
            position="right"
            referenceId="bandId"
            size={100}
            sortMode="disabled"
            summaryAggregationMode="none"
            valueOverride="Delete"
          >
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deleteBrand"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="getSummaryTrigger"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
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
              pluginId="brandsTable"
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
              pluginId="brandsTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Container
      id="workOrdersContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ exclusionsTableContent.value.excludedWorkOrderTypes.length === 0 }}"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="clientsHeader3"
          value="##### Work Orders"
          verticalAlign="center"
        />
      </Header>
      <View id="5bf63" viewKey="View 1">
        <Table
          id="workOrdersTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ exclusionsTableContent.value.excludedWorkOrderTypes }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="f8e7d"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="f8e7d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a7652"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="name"
            label="Work Order Type"
            placeholder="Enter value"
            position="center"
            size={338}
            summaryAggregationMode="none"
          />
          <Column
            id="0c280"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            label="Excluded By"
            placeholder="Select option"
            position="center"
            referenceId="excludedBy"
            size={450}
            summaryAggregationMode="none"
            valueOverride="Admin"
          />
          <Column
            id="0c075"
            alignment="left"
            format="button"
            formatOptions={{
              variant: "solid",
              iconAfter: "bold/interface-delete-bin-1",
              buttonColor: "rgb(255, 0, 0)",
            }}
            groupAggregationMode="none"
            placeholder="Enter value"
            position="right"
            referenceId="workOrderId"
            size={100}
            sortMode="disabled"
            summaryAggregationMode="none"
            valueOverride="Delete"
          >
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deleteWorkOrder"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="getSummaryTrigger"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
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
              pluginId="workOrdersTable"
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
              pluginId="workOrdersTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Container
      id="prioritiesContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ exclusionsTableContent.value.excludedPriorities.length === 0 }}"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="prioritiesHeader"
          value="##### Priority"
          verticalAlign="center"
        />
      </Header>
      <View id="5bf63" viewKey="View 1">
        <Table
          id="prioritiesTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ exclusionsTableContent.value.excludedPriorities }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="f8e7d"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="f8e7d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a7652"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="name"
            label="Priority"
            placeholder="Enter value"
            position="center"
            size={338}
            summaryAggregationMode="none"
          />
          <Column
            id="0c280"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            label="Excluded By"
            placeholder="Select option"
            position="center"
            referenceId="excludedBy"
            size={450}
            summaryAggregationMode="none"
            valueOverride="Admin"
          />
          <Column
            id="0c075"
            alignment="left"
            format="button"
            formatOptions={{
              variant: "solid",
              iconAfter: "bold/interface-delete-bin-1",
              buttonColor: "rgb(255, 0, 0)",
            }}
            groupAggregationMode="none"
            placeholder="Enter value"
            position="right"
            referenceId="workOrderId"
            size={100}
            sortMode="disabled"
            summaryAggregationMode="none"
            valueOverride="Delete"
          >
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deletePriority"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="getSummaryTrigger"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
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
              pluginId="prioritiesTable"
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
              pluginId="prioritiesTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Container
      id="sitesContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{siteTableContent.data.sites.length === 0}}"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text id="clientsHeader4" value="##### Site" verticalAlign="center" />
      </Header>
      <View id="5bf63" viewKey="View 1">
        <Table
          id="sitesTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ siteTableContent.data.sites }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="78398"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="78398"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            referenceId="id"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="20a68"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            key="businessName"
            label="Business name"
            placeholder="Enter value"
            position="center"
            size={226}
            summaryAggregationMode="none"
          />
          <Column
            id="eca2b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="name"
            label="Site Location"
            placeholder="Enter value"
            position="center"
            referenceId="siteLocation"
            size={327}
            summaryAggregationMode="none"
          />
          <Column
            id="0c280"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            label="Excluded By"
            placeholder="Select option"
            position="center"
            referenceId="excludedBy"
            size={150}
            summaryAggregationMode="none"
            valueOverride="Admin"
          />
          <Column
            id="7b688"
            alignment="left"
            format="button"
            formatOptions={{
              variant: "solid",
              buttonColor: "rgb(255, 0, 0)",
              iconAfter: "bold/interface-delete-bin-1",
            }}
            groupAggregationMode="none"
            placeholder="Enter value"
            position="right"
            referenceId="siteId"
            size={100}
            sortMode="disabled"
            summaryAggregationMode="none"
            valueOverride="Delete"
          >
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deleteSite"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="getSummaryTrigger"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
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
              pluginId="sitesTable"
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
              pluginId="sitesTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Container
      id="statesContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{statesTable.data.length === 0}}"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text id="statesHeader" value="##### State" verticalAlign="center" />
      </Header>
      <View id="5bf63" viewKey="View 1">
        <Table
          id="statesTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ exclusionsTableContent.value.excludedStates }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="f8e7d"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="f8e7d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a7652"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="name"
            label="State"
            placeholder="Enter value"
            position="center"
            size={338}
            summaryAggregationMode="none"
          />
          <Column
            id="0c280"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            label="Excluded By"
            placeholder="Select option"
            position="center"
            referenceId="excludedBy"
            size={413}
            summaryAggregationMode="none"
            valueOverride="Admin"
          />
          <Column
            id="420fc"
            alignment="left"
            format="button"
            formatOptions={{
              variant: "solid",
              iconBefore: "",
              buttonColor: "rgb(255, 0, 0)",
              iconAfter: "bold/interface-delete-bin-1",
            }}
            groupAggregationMode="none"
            placeholder="Enter value"
            position="right"
            referenceId="entityId"
            size={100}
            sortMode="disabled"
            summaryAggregationMode="none"
            valueOverride=" Delete"
          >
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deleteState"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickCell"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="getSummaryTrigger"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
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
              pluginId="statesTable"
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
              pluginId="statesTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
  </View>
</Container>
