<ExpandedRow id="perJobFlatRatesModalTableExpandedRow">
  <Table
    id="table25"
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ perJobFlatRatesModalTable.currentSourceRow.subtradeRates }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    emptyMessage="No rows found"
    enableSaveActions={true}
    heightType="auto"
    primaryKeyColumnId="8dee2"
    rowHeight="medium"
    showBorder={true}
    toolbarPosition="bottom"
  >
    <Column
      id="c241d"
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
      id="46398"
      alignment="right"
      editableOptions={{ map: { showStepper: true } }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="flatRateCents"
      label="Flat rate cents"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="35f51"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      key="notes"
      label="Notes"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="f7e50"
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
