<Container
  id="container87"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="normal"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle134"
      marginType="normal"
      value="#### Rates"
      verticalAlign="center"
    />
    <Button
      id="button5"
      marginType="normal"
      style={{
        ordered: [
          { borderRadius: "8px" },
          { label: "rgb(2, 101, 220)" },
          { border: "rgb(2, 101, 220)" },
        ],
      }}
      styleVariant="outline"
      text="Add New Rate Logic"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [{ value: "true" }] }}
        pluginId="newRateLogic"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="11500" viewKey="View 1">
    <NumberInput
      id="currency1"
      currency="USD"
      disabled="true"
      format="currency"
      inputValue={0}
      label="Initial Hourly Rate"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{ratesData.value.hourlyFeeCents / 100}}"
    />
    <NumberInput
      id="currency2"
      currency="USD"
      disabled="true"
      format="currency"
      inputValue={0}
      label="Initial Trip Fee"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{ratesData.value.tripFeeCents / 100}}"
    />
    <Select
      id="projectionTypeSelect"
      emptyMessage="No options"
      hidden="true"
      itemMode="static"
      label=""
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="jobs"
    >
      <Option id="4dccc" label="Jobs" value="jobs" />
      <Option id="94e4e" label="Potential Earnings" value="potentialEarnings" />
    </Select>
    <Table
      id="table22"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ projectionsTableDataTransformer.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      hidden="true"
      primaryKeyColumnId="422ca"
      showBorder={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="422ca"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="rates"
        label="Rates"
        placeholder="Enter value"
        position="center"
        referenceId="rates"
        size={113.84375}
        summaryAggregationMode="none"
      />
      <Column
        id="4cd90"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="monthly"
        label="1 month"
        placeholder="Enter value"
        position="center"
        size={64.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="b005d"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="quarterly"
        label="3 months"
        placeholder="Enter value"
        position="center"
        size={71.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="ecac2"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="halfYear"
        label="6 months"
        placeholder="Enter value"
        position="center"
        size={71.484375}
        summaryAggregationMode="none"
      />
    </Table>
    <Container
      id="collapsibleContainer11"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{originalRatesTableData.value.length === 0}}"
      marginType="normal"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="collapsibleTitle16"
          marginType="normal"
          value="#### Unedited Rates"
          verticalAlign="center"
        />
        <Button
          id="button7"
          style={{
            ordered: [
              { border: "rgb(2, 101, 220)" },
              { borderRadius: "8px" },
              { label: "rgb(2, 101, 220)" },
            ],
          }}
          styleVariant="outline"
          text="Bulk Edit"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="bulkEditRates"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="setValue"
            params={{ ordered: [{ value: "ORIGINAL" }] }}
            pluginId="bulkEditType"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="b409e" viewKey="View 1">
        <Table
          id="uneditedRatesTable"
          actionsOverflowPosition={1}
          autoColumnWidth={true}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ originalRatesTableData.value }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="d2d3d"
          showBorder={true}
          showHeader={true}
          showInEditor={true}
          toolbarPosition="bottom"
        >
          <Include src="./uneditedRatesTableExpandedRow.rsx" />
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
            size={107.5}
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
            size={73.84375}
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
            size={81.40625}
            summaryAggregationMode="none"
            valueOverride="{{item/100}}"
          />
          <Column
            id="78b5e"
            alignment="left"
            editable="false"
            format="tag"
            formatOptions={{ map: { automaticColors: true } }}
            groupAggregationMode="none"
            key="approvalStatus"
            label="Approval"
            optionList={{
              map: {
                manualData: [
                  {
                    ordered: [
                      { value: "APPROVED" },
                      { label: "Approved" },
                      { color: "rgb(0, 128, 0)" },
                    ],
                  },
                  {
                    ordered: [
                      { value: "REJECTED" },
                      { label: "Rejected" },
                      { color: "rgb(255, 0, 0)" },
                    ],
                  },
                  {
                    ordered: [
                      { value: "PENDING" },
                      { label: "Pending Approval" },
                      { color: "rgb(255, 165, 0)" },
                    ],
                  },
                ],
              },
            }}
            placeholder="Select option"
            position="center"
            size={133.578125}
            summaryAggregationMode="none"
          />
          <Column
            id="d2d3d"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="tradeId"
            label="Trade ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Action id="51b8e" icon="bold/interface-edit-pencil" label="Edit">
            <Event
              event="clickAction"
              method="show"
              params={{ ordered: [] }}
              pluginId="editOriginalRates"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "{{currentSourceRow}}" }] }}
              pluginId="rateBeingEditedData"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "'ORIGINAL'" }] }}
              pluginId="singleEditType"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Event
            event="save"
            method="setValue"
            params={{ ordered: [{ value: "'ORIGINAL'" }] }}
            pluginId="statusUpdateFromTable"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="putUpdateAlignmentRateStatus"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Container
      id="collapsibleContainer12"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{partnershipsTableData.value.length === 0}}"
      marginType="normal"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="collapsibleTitle17"
          marginType="normal"
          value="#### Partnerships"
          verticalAlign="center"
        />
        <Button
          id="button8"
          style={{
            ordered: [
              { border: "rgb(2, 101, 220)" },
              { label: "rgb(2, 101, 220)" },
              { borderRadius: "8px" },
            ],
          }}
          styleVariant="outline"
          text="Bulk Edit"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="bulkEditRates"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="setValue"
            params={{ ordered: [{ value: "PARTNERSHIP" }] }}
            pluginId="bulkEditType"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="b409e" viewKey="View 1">
        <Table
          id="partnershipsTable"
          actionsOverflowPosition={1}
          autoColumnWidth={true}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ partnershipsTableData.value }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="bef95"
          showBorder={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Include src="./partnershipsTableExpandedRow.rsx" />
          <Column
            id="61240"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            key="tradeName"
            label="Trades and Subtrades"
            placeholder="Enter value"
            position="center"
            size={145.59375}
            summaryAggregationMode="none"
          />
          <Column
            id="216a8"
            alignment="right"
            editableOptions={{ map: { showStepper: true } }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="partnershipPercentage"
            label="Percentage"
            placeholder="Enter value"
            position="center"
            size={83.4375}
            summaryAggregationMode="none"
          />
          <Column
            id="0ec5d"
            alignment="left"
            editable="true"
            format="tag"
            formatOptions={{ map: { automaticColors: true } }}
            groupAggregationMode="none"
            key="approvalStatus"
            label="Approval"
            optionList={{
              map: {
                manualData: [
                  {
                    ordered: [
                      { value: "APPROVED" },
                      { color: "rgb(0, 128, 0)" },
                      { label: "Approved" },
                    ],
                  },
                  {
                    ordered: [
                      { value: "REJECTED" },
                      { label: "Rejected" },
                      { color: "rgb(255, 0, 0)" },
                    ],
                  },
                  {
                    ordered: [
                      { value: "PENDING" },
                      { color: "rgb(255, 165, 0)" },
                      { label: "Pending Approval" },
                    ],
                  },
                ],
              },
            }}
            placeholder="Select option"
            position="center"
            size={133.578125}
            summaryAggregationMode="none"
          />
          <Column
            id="bef95"
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
          <Action id="0e441" icon="bold/interface-edit-pencil" label="Action 1">
            <Event
              event="clickAction"
              method="show"
              params={{ ordered: [] }}
              pluginId="editPartnershipRates"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "{{currentSourceRow}}" }] }}
              pluginId="rateBeingEditedData"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "'PARTNERSHIP'" }] }}
              pluginId="singleEditType"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Event
            event="save"
            method="setValue"
            params={{ ordered: [{ value: "'PARTNERSHIP'" }] }}
            pluginId="statusUpdateFromTable"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="putUpdateAlignmentRateStatus"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Container
      id="collapsibleContainer13"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{flatRatesTableData.value.length === 0}}"
      marginType="normal"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="collapsibleTitle18"
          marginType="normal"
          value="#### Per Job Flat Rates"
          verticalAlign="center"
        />
        <Button
          id="button9"
          style={{
            ordered: [
              { border: "rgb(2, 101, 220)" },
              { borderRadius: "8px" },
              { label: "rgb(2, 101, 220)" },
            ],
          }}
          styleVariant="outline"
          text="Bulk edit"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="bulkEditRates"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="setValue"
            params={{ ordered: [{ value: "FLAT" }] }}
            pluginId="bulkEditType"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="b409e" viewKey="View 1">
        <Table
          id="perJobFlatRatesTable"
          actionsOverflowPosition={1}
          autoColumnWidth={true}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ flatRatesTableData.value }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="627c3"
          showBorder={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Include src="./perJobFlatRatesTableExpandedRow.rsx" />
          <Column
            id="82b18"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            key="tradeName"
            label="Trade and Subtrades"
            placeholder="Enter value"
            position="center"
            size={138.96875}
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
            size={68.15625}
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
            size={50.84375}
            summaryAggregationMode="none"
          />
          <Column
            id="a3470"
            alignment="left"
            editable="true"
            format="tag"
            formatOptions={{ map: { automaticColors: true } }}
            groupAggregationMode="none"
            key="approvalStatus"
            label="Approval"
            optionList={{
              map: {
                manualData: [
                  {
                    ordered: [
                      { value: "APPROVED" },
                      { label: "Approved" },
                      { color: "rgb(0, 128, 0)" },
                    ],
                  },
                  {
                    ordered: [
                      { value: "REJECTED" },
                      { label: "Rejected" },
                      { color: "rgb(255, 0, 0)" },
                    ],
                  },
                  {
                    ordered: [
                      { value: "PENDING" },
                      { label: "Pending Approval" },
                      { color: "rgb(255, 165, 0)" },
                    ],
                  },
                ],
              },
            }}
            placeholder="Select option"
            position="center"
            size={68.609375}
            summaryAggregationMode="none"
          />
          <Column
            id="627c3"
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
          <Action id="681c2" icon="bold/interface-edit-pencil" label="Action 1">
            <Event
              event="clickAction"
              method="show"
              params={{ ordered: [] }}
              pluginId="editFlatRates"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "{{currentSourceRow}}" }] }}
              pluginId="rateBeingEditedData"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "'FLAT'" }] }}
              pluginId="singleEditType"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Event
            event="save"
            method="setValue"
            params={{ ordered: [{ value: "'FLAT'" }] }}
            pluginId="statusUpdateFromTable"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="putUpdateAlignmentRateStatus"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Container
      id="collapsibleContainer10"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{editedRatesTableData.value.length === 0}}"
      marginType="normal"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="collapsibleTitle15"
          marginType="normal"
          value="#### Hourly + Trip Rates"
          verticalAlign="center"
        />
        <Button
          id="button10"
          style={{
            ordered: [
              { border: "rgb(2, 101, 220)" },
              { borderRadius: "8px" },
              { label: "rgb(2, 101, 220)" },
            ],
          }}
          styleVariant="outline"
          text="Bulk Edit"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="bulkEditRates"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="setValue"
            params={{ ordered: [{ value: "EDITED" }] }}
            pluginId="bulkEditType"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="b409e" viewKey="View 1">
        <Table
          id="hourlyTripRatesTable"
          actionsOverflowPosition={1}
          autoColumnWidth={true}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ editedRatesTableData.value }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="693d8"
          showBorder={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Include src="./hourlyTripRatesTableExpandedRow.rsx" />
          <Column
            id="2a641"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            key="tradeName"
            label="Trades and Subtrades"
            placeholder="Enter value"
            position="center"
            size={145.59375}
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
            label="Hourly"
            placeholder="Enter value"
            position="center"
            size={66.296875}
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
            size={66.296875}
            summaryAggregationMode="none"
            valueOverride="{{item/100}}"
          />
          <Column
            id="d7908"
            alignment="left"
            editable="true"
            format="tag"
            formatOptions={{ map: { automaticColors: true } }}
            groupAggregationMode="none"
            key="approvalStatus"
            label="Approval"
            optionList={{
              map: {
                manualData: [
                  {
                    ordered: [
                      { value: "APPROVED" },
                      { label: "Approved" },
                      { color: "rgb(0, 128, 0)" },
                    ],
                  },
                  {
                    ordered: [
                      { value: "REJECTED" },
                      { label: "Rejected" },
                      { color: "rgb(255, 0, 0)" },
                    ],
                  },
                  {
                    ordered: [
                      { value: "PENDING" },
                      { label: "Pending Approval" },
                      { color: "rgb(255, 165, 0)" },
                    ],
                  },
                ],
              },
            }}
            placeholder="Select option"
            position="center"
            size={82.78125}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="693d8"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="tradeId"
            label="Trade ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Action id="50bea" icon="bold/interface-edit-pencil" label="Action 1">
            <Event
              event="clickAction"
              method="show"
              params={{ ordered: [] }}
              pluginId="editEditedRates"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "{{currentSourceRow}}" }] }}
              pluginId="rateBeingEditedData"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "'EDITED'" }] }}
              pluginId="singleEditType"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Event
            event="save"
            method="setValue"
            params={{ ordered: [{ value: "'EDITED'" }] }}
            pluginId="statusUpdateFromTable"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="putUpdateAlignmentRateStatus"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Include src="./container88.rsx" />
  </View>
</Container>
