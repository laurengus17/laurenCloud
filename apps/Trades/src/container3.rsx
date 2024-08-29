<Container
  id="container3"
  disabled="{{getTradeAndEquipment.isFetching || putAddSubtrades.isFetching || putUpdateTradeStatus.isFetching}}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  loading="{{getTradeAndEquipment.isFetching || putAddSubtrades.isFetching || putUpdateTradeStatus.isFetching || tableClearChangeset.isFetching}}"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle3"
      value="#### {{ getTradeAndEquipment.data.trades[i].tradeName }}"
      verticalAlign="center"
    />
    <SplitButton
      id="bulkActionButton2"
      _colorByIndex={["", "", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", "", ""]}
      _imageByIndex={["", "", "", "", "", ""]}
      _values={["", "", "", "Action 4", "Action 5", "Action 6"]}
      disabled="{{putUpdateTradeStatus.isFetching}}"
      horizontalAlign="right"
      itemMode="static"
      marginType="normal"
      overlayMaxHeight={375}
      selectedIndex="{{getTradeAndEquipment.data.trades[i].subtrades.length > 0 ? 0 : 3}}"
      showSelectionIndicator={true}
      style={{ ordered: [] }}
      styleVariant="outline"
    >
      <Option
        id="60463"
        hidden="{{!getTradeAndEquipment.data.trades[i].hasSubtrades}}"
        label="Bulk Approve All"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [{ value: "{{getTradeAndEquipment.data.trades[i]}}" }],
          }}
          pluginId="tradeBeingUpdated"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="bulkApproveFrame"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="42a99"
        hidden="{{!getTradeAndEquipment.data.trades[i].hasSubtrades}}"
        label="Reject All"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [{ value: "{{getTradeAndEquipment.data.trades[i]}}" }],
          }}
          pluginId="tradeBeingUpdated"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="bulkRejectFrame"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="5b43f"
        hidden="{{!getTradeAndEquipment.data.trades[i].hasSubtrades}}"
        label="Restrict Approve All"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [{ value: "{{getTradeAndEquipment.data.trades[i]}}" }],
          }}
          pluginId="tradeBeingUpdated"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="bulkRestrictFrame"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="b67fa"
        disabled={false}
        hidden="{{getTradeAndEquipment.data.trades[i].hasSubtrades}}"
        label="Approve"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [{ value: "{{getTradeAndEquipment.data.trades[i]}}" }],
          }}
          pluginId="tradeBeingUpdated"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setValue"
          params={{ ordered: [{ value: "'APPROVED'" }] }}
          pluginId="directApproveTradeStatus"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="putUpdateTradeStatus"
          type="datasource"
          waitMs="1000"
          waitType="debounce"
        />
      </Option>
      <Option
        id="82f59"
        disabled={false}
        hidden="{{getTradeAndEquipment.data.trades[i].hasSubtrades}}"
        label="Reject"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [{ value: "{{getTradeAndEquipment.data.trades[i]}}" }],
          }}
          pluginId="tradeBeingUpdated"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setValue"
          params={{ ordered: [{ value: "'REJECTED'" }] }}
          pluginId="directApproveTradeStatus"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="putUpdateTradeStatus"
          type="datasource"
          waitMs="1000"
          waitType="debounce"
        />
      </Option>
      <Option
        id="04b7b"
        disabled={false}
        hidden="{{getTradeAndEquipment.data.trades[i].hasSubtrades}}"
        label="Restrict"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [{ value: "{{getTradeAndEquipment.data.trades[i]}}" }],
          }}
          pluginId="tradeBeingUpdated"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setValue"
          params={{ ordered: [{ value: "'RESTRICTED'" }] }}
          pluginId="directApproveTradeStatus"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="putUpdateTradeStatus"
          type="datasource"
          waitMs="1000"
          waitType="debounce"
        />
      </Option>
    </SplitButton>
  </Header>
  <View id="89217" viewKey="View 1">
    <ListViewBeta
      id="gridView2"
      data="{{getTradeAndEquipment.data.trades[i].attributes}}"
      direction="horizontal"
      heightType="auto"
      hidden="{{getTradeAndEquipment.data.trades[i].attributes.length === 0}}"
      itemWidth="200px"
      layoutType="grid"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <KeyValue
        id="keyValue1"
        data="{
  {{item.attributeName}}: {{item?.selectedOptions?.map((item) => item.name).join(', ')}}
}"
        editIcon="bold/interface-edit-pencil"
        enableSaveActions={true}
        groupLayout="singleColumn"
        itemLabelPosition="top"
        labelWrap={true}
      />
    </ListViewBeta>
    <Link
      id="link4"
      hidden="{{!getTradeAndEquipment.data.trades[i]?.tradeLicenseFile?.getUrl}}"
      text="View License"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="pdfFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setFileUrl"
        params={{
          ordered: [
            {
              value:
                "{{getTradeAndEquipment.data.trades[i]?.tradeLicenseFile?.getUrl}}",
            },
          ],
        }}
        pluginId="pdf1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Button
      id="button14"
      hidden="{{getTradeAndEquipment.data.trades[i].subtrades.length === 0}}"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="+ Add Subtrade"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="addSubtradeFame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            { value: "{{getTradeAndEquipment.data.trades[i].tradeId}}" },
          ],
        }}
        pluginId="tradeId"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSubtrades"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{getTradeAndEquipment.data.trades[i].subtrades.map((it) => it.tradeId)}}",
            },
          ],
        }}
        pluginId="subtradeIdsOfTrade"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Table
      id="table2"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ mockDataTrades.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      heightType="auto"
      hidden="{{getTradeAndEquipment.data.trades[i].subtrades.length === 0}}"
      rowHeight="medium"
      showHeader={true}
    >
      <Column
        id="9e0b5"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        key="trades"
        label="Trades"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="66fd7"
        alignment="left"
        editable={true}
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="equipment"
        label="Equipment"
        optionList={{
          manualData: [
            { ordered: [{ value: "Option 1" }] },
            { ordered: [{ value: "Option 2" }] },
            { ordered: [{ value: "Option 3" }] },
            { ordered: [{ value: "Option 4" }] },
            { ordered: [{ value: "Option 5" }] },
          ],
        }}
        placeholder="Select options"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Event
        enabled=""
        event="changeCell"
        method="setValue"
        params={{ ordered: [{ value: "{{currentSourceRow}}" }] }}
        pluginId="subtradeBeingRejected"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getTradeAndEquipment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
</Container>
