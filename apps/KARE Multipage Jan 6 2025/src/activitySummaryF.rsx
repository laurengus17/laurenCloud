<ModalFrame
  id="activitySummaryF"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="fullScreen"
  style={{
    ordered: [{ borderRadius: "20px" }, { headerBackground: "primary" }],
  }}
>
  <Header>
    <Text
      id="modalTitle14"
      value="### Activity Summary"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton16"
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
        pluginId="activitySummaryF"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="container5"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{ ordered: [{ headerBackground: "primary" }] }}
    >
      <View id="85b35" viewKey="View 1">
        <Table
          id="table15"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ allUpdates.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="74e7b"
          rowHeight="small"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="74e7b"
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
            id="9779c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="customer_name"
            label="Customer name"
            placeholder="Enter value"
            position="center"
            size={168}
            summaryAggregationMode="none"
          />
          <Column
            id="e46a0"
            alignment="left"
            format="date"
            groupAggregationMode="none"
            key="date"
            label="Date"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="7dfe2"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            key="user"
            label="User"
            position="center"
            size={181}
            summaryAggregationMode="none"
          >
            <Event
              event="clickCell"
              method="openUrl"
              params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="bbb76"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="field"
            label="Field"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="30a9e"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="old"
            label="Old"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="75281"
            alignment="left"
            cellTooltipMode="overflow"
            format="multilineString"
            groupAggregationMode="none"
            key="new"
            label="New"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="93139"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="daysSince"
            label="Days since"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="26ae4"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="projectID"
            label="Project id"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="5fac3"
            alignment="left"
            format="boolean"
            groupAggregationMode="none"
            hidden="true"
            key="acknowledge"
            label="Acknowledge"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="0fd5c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="reason"
            label="Reason"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="e5a52"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="custID"
            label="Cust id"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
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
              pluginId="table15"
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
              pluginId="table15"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            event="doubleClickRow"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalFrame9"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <DateRange
          id="dateRange1"
          dateFormat="MMM d, yyyy"
          endPlaceholder="End date"
          iconBefore="bold/interface-calendar-remove"
          labelPosition="top"
          startPlaceholder="Start date"
          textBetween="-"
          value={{
            ordered: [{ start: "Jan 1, 2024" }, { end: "Dec 31, 2025" }],
          }}
        />
      </View>
    </Container>
  </Body>
</ModalFrame>
