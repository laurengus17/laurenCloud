<ExpandedRow id="partnershipsModalTableExpandedRow">
  <Table
    id="table24"
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ partnershipsModalTable.currentSourceRow.subtradeRates }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    emptyMessage="No rows found"
    enableSaveActions={true}
    heightType="auto"
    primaryKeyColumnId="0eb54"
    showBorder={true}
    toolbarPosition="bottom"
  >
    <Column
      id="0eb54"
      alignment="left"
      editable="false"
      format="string"
      groupAggregationMode="none"
      key="tradeName"
      label="Trade name"
      placeholder="Enter value"
      position="center"
      referenceId="column1"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="a1481"
      alignment="right"
      editableOptions={{ map: { showStepper: true } }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="percentage"
      label="Percentage"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="ad5cb"
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
