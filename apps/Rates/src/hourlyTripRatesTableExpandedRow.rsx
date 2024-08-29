<ExpandedRow id="hourlyTripRatesTableExpandedRow">
  <Table
    id="table15"
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ hourlyTripRatesTable.currentSourceRow.subtradeRates }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    emptyMessage="No rows found"
    enableSaveActions={true}
    heightType="auto"
    primaryKeyColumnId="7e9e7"
    rowHeight="medium"
    showBorder={true}
    toolbarPosition="bottom"
  >
    <Column
      id="0cfa0"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      key="tradeName"
      label="Trade name"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="ebb96"
      alignment="right"
      editableOptions={{ map: { showStepper: true } }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="hourlyFeeCents"
      label="Hourly fee cents"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="5a394"
      alignment="right"
      editableOptions={{ map: { showStepper: true } }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="tripFeeCents"
      label="Trip fee cents"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="91afc"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      key="approvalStatus"
      label="Approval status"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
  </Table>
</ExpandedRow>
