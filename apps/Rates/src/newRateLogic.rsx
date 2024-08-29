<ModalFrame
  id="newRateLogic"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle1"
      value="### Add New Rate Logic"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
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
        pluginId="newRateLogic"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Select
      id="addNewRateLogicSelect"
      emptyMessage="No options"
      itemMode="static"
      label="Rate Logic"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="FLAT"
    >
      <Option id="e2c58" label="Per job flat rate" value="FLAT" />
      <Option id="27c78" label="Partnerships" value="PARTNERSHIP" />
    </Select>
    <Container
      id="addPartnershipContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{addNewRateLogicSelect.value !== 'PARTNERSHIP'}}"
      padding="0"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle138"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="a6d2d" viewKey="View 1">
        <NumberInput
          id="addRateLogicPartnershipPercentInput"
          currency="USD"
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
      </View>
    </Container>
    <Container
      id="addFlatRateContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{addNewRateLogicSelect.value !== 'FLAT'}}"
      padding="0"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle137"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="f89bc" viewKey="View 1">
        <NumberInput
          id="addRateLogicFlatRateCentsInput"
          currency="USD"
          format="currency"
          inputValue={0}
          label="Flat rate"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <EditableText
          id="addRateLogicFlatRateNotesInput"
          editIcon="bold/interface-edit-write-1"
          inputTooltip="`Enter` to save, `Esc` to cancel"
          label="Notes"
          labelPosition="top"
          placeholder="Enter value"
        />
      </View>
    </Container>
    <Container
      id="addHourlyContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{addNewRateLogicSelect.value !== 'ORIGINAL'}}"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle139"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="a6d2d" viewKey="View 1">
        <NumberInput
          id="addRateLogicHourlyInput"
          currency="USD"
          format="currency"
          inputValue={0}
          label="Hourly rate"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <NumberInput
          id="addRateLogicTripInput"
          currency="USD"
          format="currency"
          inputValue={0}
          label="Trip fee"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value={0}
        />
      </View>
    </Container>
    <Table
      id="addRateLogicRatesTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ allTradesTableData.value }}"
      defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      primaryKeyColumnId="4cdbf"
      rowHeight="medium"
      rowSelection="multiple"
      showHeader={true}
      showInEditor={true}
      toolbarPosition="bottom"
    >
      <Include src="./addRateLogicRatesTableExpandedRow.rsx" />
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
        size={163.375}
        summaryAggregationMode="none"
      />
    </Table>
  </Body>
  <Footer>
    <Button
      id="button13"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="newRateLogic"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="resetValue"
        params={{ ordered: [] }}
        pluginId="addNewRateLogicSelect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="addRateLogicPartnershipPercentInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="addRateLogicFlatRateCentsInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="addRateLogicFlatRateNotesInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearSelection"
        params={{ ordered: [] }}
        pluginId="addRateLogicRatesTable"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button14"
      disabled=""
      loading="{{putAddRateLogic.isFetching}}"
      text="Apply To Selected"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="putAddRateLogic"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
