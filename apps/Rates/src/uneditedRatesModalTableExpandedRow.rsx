<ExpandedRow id="uneditedRatesModalTableExpandedRow">
  <Table
    id="uneditedRatesModalTable2"
    actionsOverflowPosition={1}
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ uneditedRatesModalTable.currentSourceRow?.subtradeRates }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    emptyMessage="No rows found"
    heightType="auto"
    margin="0"
    rowSelection="multiple"
    toolbarPosition="bottom"
  >
    <Column
      id="3e113"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      key="tradeName"
      label="Trade name"
      placeholder="Enter value"
      position="center"
      size={190.4375}
      summaryAggregationMode="none"
    />
    <Column
      id="7a54b"
      alignment="right"
      editableOptions={{ map: { showStepper: true } }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="hourlyFeeCents"
      label="Hourly fee cents"
      placeholder="Enter value"
      position="center"
      size={111.0625}
      summaryAggregationMode="none"
    />
    <Column
      id="47ab5"
      alignment="right"
      editableOptions={{ map: { showStepper: true } }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="tripFeeCents"
      label="Trip fee cents"
      placeholder="Enter value"
      position="center"
      size={246.390625}
      summaryAggregationMode="none"
    />
    <Action id="08188" icon="bold/interface-edit-pencil" label="Action 1" />
  </Table>
</ExpandedRow>
