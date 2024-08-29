<Container
  id="container90"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle136"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="f7962" viewKey="View 1">
    <TextInput
      id="textInput1"
      disabled="true"
      label="Rate Logic"
      labelPosition="top"
      placeholder="Enter value"
      value="{{(bulkEditType.value === 'ORIGINAL' || bulkEditType.value === 'EDITED') ? 'Hourly + Trip Rate' : (bulkEditType.value === 'PARTNERSHIP' ? 'Partnership' : (bulkEditType.value === 'FLAT' ? 'Per Job Flat Rates' : ''))}}"
    />
    <Switch
      id="afterHoursSwitch"
      hidden="{{bulkEditType.value !== 'ORIGINAL' && bulkEditType.value !== 'EDITED'}}"
      label="Add After Hours"
    />
    <NumberInput
      id="hourlyRateModal"
      currency="USD"
      format="currency"
      hidden="{{bulkEditType.value !== 'ORIGINAL'}}"
      inputValue={0}
      label="Hourly Rate"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="tripFeeModal"
      currency="USD"
      format="currency"
      hidden="{{bulkEditType.value !== 'ORIGINAL'}}"
      inputValue={0}
      label="Trip Fee"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="percentageModal"
      currency="USD"
      hidden="{{bulkEditType.value !== 'PARTNERSHIP'}}"
      inputValue={0}
      label="Percentage"
      labelPosition="top"
      max="100"
      min={0}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="tripModal"
      currency="USD"
      format="currency"
      hidden="{{bulkEditType.value !== 'EDITED'}}"
      inputValue={0}
      label="Trip Fee"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="hourlyModal"
      currency="USD"
      format="currency"
      hidden="{{bulkEditType.value !== 'EDITED'}}"
      inputValue={0}
      label="Hourly Rate"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="flatRateModal"
      currency="USD"
      format="currency"
      hidden="{{bulkEditType.value !== 'FLAT'}}"
      inputValue={0}
      label="Flat Rate"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="hourlyRateAfterHours"
      currency="USD"
      format="currency"
      hidden="{{!afterHoursSwitch.value || (bulkEditType.value !== 'ORIGINAL' && bulkEditType.value !== 'EDITED')}}"
      inputValue={0}
      label="Hourly Rate (After Hours)"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <TextInput
      id="noteModal"
      hidden="{{bulkEditType.value !== 'FLAT'}}"
      label="Note"
      labelPosition="top"
      placeholder="Enter value"
    />
    <NumberInput
      id="tripFeeAfterHours"
      currency="USD"
      format="currency"
      hidden="{{!afterHoursSwitch.value || (bulkEditType.value !== 'ORIGINAL' && bulkEditType.value !== 'EDITED')}}"
      inputValue={0}
      label="Trip Fee (After Hours)"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Table
      id="partnershipsModalTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ partnershipsTableData.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      hidden="{{bulkEditType.value !== 'PARTNERSHIP'}}"
      rowSelection="multiple"
      showBorder={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Include src="./partnershipsModalTableExpandedRow.rsx" />
      <Column
        id="61240"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="tradeName"
        label="Trade name"
        placeholder="Enter value"
        position="center"
        size={257}
        summaryAggregationMode="none"
      />
      <Column
        id="216a8"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="percentage"
        label="Percentage"
        placeholder="Enter value"
        position="center"
        size={163}
        summaryAggregationMode="none"
      />
    </Table>
    <Table
      id="hourlyTripRatesModalTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ editedRatesTableData.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      hidden="{{bulkEditType.value !== 'EDITED'}}"
      primaryKeyColumnId="0a2ee"
      rowSelection="multiple"
      showBorder={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Include src="./hourlyTripRatesModalTableExpandedRow.rsx" />
      <Column
        id="2a641"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="tradeName"
        label="Trade name"
        placeholder="Enter value"
        position="center"
        size={190}
        summaryAggregationMode="none"
      />
      <Column
        id="05339"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="currency"
        formatOptions={{
          currency: "USD",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        key="hourlyRateCents"
        label="Hourly "
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{item/100}}"
      />
      <Column
        id="b60e1"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="currency"
        formatOptions={{
          currency: "USD",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        key="tripFeeCents"
        label="Trip Fee"
        placeholder="Enter value"
        position="center"
        size={146}
        summaryAggregationMode="none"
        valueOverride="{{item/100}}"
      />
      <Column
        id="0a2ee"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="tradeId"
        label="Trade ID"
        placeholder="Enter value"
        position="center"
        referenceId="tradeId"
        size={100}
        summaryAggregationMode="none"
      />
    </Table>
    <Table
      id="perJobFlatRatesModalTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ flatRatesTableData.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      hidden="{{bulkEditType.value !== 'FLAT'}}"
      primaryKeyColumnId="ba4cf"
      rowSelection="multiple"
      showBorder={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Include src="./perJobFlatRatesModalTableExpandedRow.rsx" />
      <Column
        id="82b18"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="tradeName"
        label="Trade and Subtrades"
        placeholder="Enter value"
        position="center"
        size={177}
        summaryAggregationMode="none"
      />
      <Column
        id="9b76d"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="currency"
        formatOptions={{
          currency: "USD",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        key="flatRateCents"
        label="Flat Rate"
        placeholder="Enter value"
        position="center"
        referenceId="column2"
        size={160}
        summaryAggregationMode="none"
        valueOverride="{{item/100}}"
      />
      <Column
        id="c1723"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="notes"
        label="Notes"
        placeholder="Enter value"
        position="center"
        size={268}
        summaryAggregationMode="none"
      />
      <Column
        id="ba4cf"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="tradeId"
        label="Trade ID"
        placeholder="Enter value"
        position="center"
        referenceId="tradeId"
        size={100}
        summaryAggregationMode="none"
      />
    </Table>
    <Table
      id="uneditedRatesModalTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ originalRatesTableData.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      hidden="{{bulkEditType.value !== 'ORIGINAL'}}"
      margin="0"
      primaryKeyColumnId="4cdbf"
      rowSelection="multiple"
      showBorder={true}
      showHeader={true}
      showInEditor={true}
      toolbarPosition="bottom"
    >
      <Include src="./uneditedRatesModalTableExpandedRow.rsx" />
      <Column
        id="4cdbf"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="tradeName"
        label="Trade name"
        placeholder="Enter value"
        position="center"
        size={155}
        summaryAggregationMode="none"
      />
      <Column
        id="dcaf2"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="currency"
        formatOptions={{
          currency: "USD",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        key="hourlyRateCents"
        label="Hourly "
        placeholder="Enter value"
        position="center"
        size={128}
        summaryAggregationMode="none"
        valueOverride="{{item/100}}"
      />
      <Column
        id="0cc24"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="currency"
        formatOptions={{
          currency: "USD",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        key="tripFeeCents"
        label="Trip Fee"
        placeholder="Enter value"
        position="center"
        size={258}
        summaryAggregationMode="none"
        valueOverride="{{item/100}}"
      />
    </Table>
  </View>
</Container>
