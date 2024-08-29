<ExpandedRow id="uneditedRatesTableExpandedRow">
  <Table
    id="uneditedRatesTable2"
    actionsOverflowPosition={1}
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ uneditedRatesTable.currentSourceRow?.subtradeRates }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    emptyMessage="No rows found"
    heightType="auto"
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
    <Column
      id="190aa"
      alignment="left"
      editable="true"
      format="tag"
      formatOptions={{ map: { automaticColors: true } }}
      groupAggregationMode="none"
      key="approvalStatus"
      label="Approval status"
      optionList={{
        map: {
          manualData: [
            {
              ordered: [
                { value: "APPROVED" },
                { label: "Approve" },
                { color: "rgb(0, 128, 0)" },
              ],
            },
            {
              ordered: [
                { value: "REJECTED" },
                { label: "Reject" },
                { color: "rgb(255, 0, 0)" },
              ],
            },
          ],
        },
      }}
      placeholder="Select option"
      position="center"
      size={107.34375}
      summaryAggregationMode="none"
    />
    <Action id="08188" icon="bold/interface-edit-pencil" label="Action 1" />
  </Table>
</ExpandedRow>
