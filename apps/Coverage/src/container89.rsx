<Container
  id="container89"
  disabled="false"
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
      value="#### Coverage"
      verticalAlign="center"
    />
    <Button
      id="saveTravelTimeButton"
      disabled="true"
      loading="{{alignmentCoverage.isFetching}}"
      text="Save"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="alignmentCoveragePut"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="09e32" viewKey="View 1">
    <Text
      id="text87"
      marginType="normal"
      value="##### Dispatch Address"
      verticalAlign="center"
    />
    <Map id="mapboxMap2" />
    <Text
      id="text89"
      marginType="normal"
      value="##### Drivable Time"
      verticalAlign="center"
    />
    <Text
      id="text88"
      marginType="normal"
      value="{{ alignmentCoverage.data.ratesAndCoverageDto.dispatchAddress.address1}}
{{ alignmentCoverage.data.ratesAndCoverageDto.dispatchAddress.address2 }}
{{ alignmentCoverage.data.ratesAndCoverageDto.dispatchAddress.city }}, {{ alignmentCoverage.data.ratesAndCoverageDto.dispatchAddress.state }} {{ alignmentCoverage.data.ratesAndCoverageDto.dispatchAddress.zipcode }}"
      verticalAlign="center"
    />
    <Text
      id="text90"
      marginType="normal"
      value="Initial Drivable Time: {{ alignmentCoverage.data.ratesAndCoverageDto.travelUpToMinutes/60 }} hrs"
      verticalAlign="center"
    />
    <Text
      id="text91"
      marginType="normal"
      value="**Adjusted Drivable Time**"
      verticalAlign="center"
    />
    <NumberInput
      id="hoursInput"
      currency="USD"
      decimalPlaces=""
      disabled=""
      iconAfter="bold/interface-time-clock-circle"
      inputValue={0}
      label="Hr"
      labelPosition="top"
      marginType="normal"
      max="6"
      min="0"
      padDecimal={true}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{Math.floor(alignmentCoverage.data.ratesAndCoverageDto.adjustedTravelUpToMinutes/60)}}"
    >
      <Event
        event="change"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="saveTravelTimeButton"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{hoursInput.value === 6}}"
        event="change"
        method="run"
        params={{ ordered: [{ src: "minutesInput.setValue(0);" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </NumberInput>
    <Select
      id="minutesInput"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabled="{{hoursInput.value === 6}}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconAfter="bold/interface-time-clock-circle"
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Min"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{(alignmentCoverage.data.ratesAndCoverageDto.adjustedTravelUpToMinutes)%60}}"
      values=""
    >
      <Option id="c118b" disabled={false} hidden={false} value="0" />
      <Option id="42739" disabled={false} hidden={false} value="15" />
      <Option id="357f8" disabled={false} hidden={false} value="30" />
      <Option id="c293f" disabled={false} hidden={false} value="45" />
      <Event
        event="change"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="saveTravelTimeButton"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Status
      id="businessAddressStatus"
      hidden="{{getUser.data.spKey === 'independent_technician'}}"
      itemMode="static"
      value="{{alignmentCoverage.data.ratesAndCoverageDto.sameAddress}}"
    >
      <Option
        id="63432"
        color="{{ theme.success }}"
        icon="bold/interface-validation-check-circle"
        label="Same as Business Address"
        value="{{true}}"
      />
      <Option
        id="cae62"
        color="{{ theme.warning }}"
        icon="bold/interface-alert-warning-circle"
        label="Not same as Business Address"
        value="{{false}}"
      />
    </Status>
    <Status
      id="status18"
      itemMode="static"
      marginType="normal"
      style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
      value="{{ alignmentCoverage.data.ratesAndCoverageDto.willingToTravelInSpecialCases }}"
    >
      <Option
        id="21286"
        color="{{ theme.success }}"
        icon="bold/interface-validation-check-circle"
        label="Willing to travel in special cases"
        value="true"
      />
      <Option
        id="1f816"
        color="{{ theme.danger }}"
        icon="bold/interface-delete-circle"
        label="Not willing to travel in special cases"
        value="false"
      />
    </Status>
    <Status
      id="status19"
      itemMode="static"
      marginType="normal"
      style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
      value="{{alignmentCoverage.data.ratesAndCoverageDto.willingToTravelOutsideState}}"
    >
      <Option
        id="21286"
        color="{{ theme.success }}"
        icon="bold/interface-validation-check-circle"
        label="Willing to travel in outside state"
        value="true"
      />
      <Option
        id="1f816"
        color="{{ theme.danger }}"
        icon="bold/interface-delete-circle"
        label="Not willing to travel outside state"
        value="false"
      />
    </Status>
    <Select
      id="select2"
      emptyMessage="No options"
      hidden="true"
      itemMode="static"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="workOrders"
    >
      <Option id="9b28d" label="Work Orders" value="workOrders" />
      <Option id="2a0f6" label="Clients" value="clients" />
      <Option id="a4b3f" label="Potential Earnings" value="potentialEarnings" />
    </Select>
    <Table
      id="table1"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{coverageProjections.value}}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      hidden="true"
      primaryKeyColumnId="45cec"
      showBorder={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="45cec"
        alignment="left"
        editable={false}
        format="string"
        formatOptions={{ map: { automaticColors: true } }}
        groupAggregationMode="none"
        key="trade"
        label="Trade"
        placeholder="Enter value"
        position="center"
        referenceId="trade"
        size={76.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="f80af"
        alignment="left"
        format="multilineString"
        formatOptions={{ map: { automaticColors: true } }}
        groupAggregationMode="none"
        key="subTrades"
        label="Sub trades"
        placeholder="Enter value"
        position="center"
        size={172.0625}
        summaryAggregationMode="none"
        valueOverride="{{item.join(', ')}}"
      />
      <Column
        id="70964"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="monthly"
        label="1 month"
        placeholder="Enter value"
        position="center"
        referenceId="1Month"
        size={64.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="4de23"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="quarterly"
        label="3 months"
        placeholder="Enter value"
        position="center"
        referenceId="3Months"
        size={71.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="b7bf4"
        alignment="right"
        editableOptions={{ map: { showStepper: true } }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="halfYearly"
        label="6 months"
        placeholder="Enter value"
        position="center"
        referenceId="6Months"
        size={71.484375}
        summaryAggregationMode="none"
      />
    </Table>
  </View>
</Container>
