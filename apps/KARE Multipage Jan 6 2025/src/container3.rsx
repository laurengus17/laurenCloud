<Container
  id="container3"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ headerBackground: "primary" }] }}
>
  <Header>
    <Text
      id="containerTitle3"
      horizontalAlign="center"
      value="#### Projects"
      verticalAlign="center"
    />
  </Header>
  <View id="85b35" viewKey="View 1">
    <Multiselect
      id="multiselect2"
      captionByIndex=""
      colorByIndex=""
      data=""
      deprecatedLabels={[]}
      disabledByIndex=""
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label=""
      labels=""
      overlayMaxHeight={375}
      placeholder="Kare Group"
      selectedIndexes={[]}
      selectedItems={[]}
      selectedLabels={[]}
      showSelectionIndicator={true}
      tooltipByIndex=""
      value={[]}
      values=""
      wrapTags={true}
    >
      <Option id="7013e" disabled={false} hidden={false} value="K" />
      <Option id="c7b4f" disabled={false} hidden={false} value="A" />
      <Option id="c0534" disabled={false} hidden={false} value="R" />
      <Option id="04b8d" disabled={false} hidden={false} value="E" />
    </Multiselect>
    <Multiselect
      id="multiselect3"
      captionByIndex=""
      colorByIndex={[]}
      data="{{ slsID.data }}"
      deprecatedLabels={[]}
      disabledByIndex={[]}
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex={[]}
      hidden="{{ UAvariable.value == false }}"
      hiddenByIndex={[]}
      iconByIndex={[]}
      imageByIndex={[]}
      label=""
      labels="{{ item.sls_id}}"
      overlayMaxHeight={375}
      placeholder="Sales ID"
      selectedIndexes={[]}
      selectedItems={[]}
      selectedLabels={[]}
      showSelectionIndicator={true}
      tooltipByIndex={[]}
      value={[]}
      values="{{ item.sls_id }}"
      wrapTags={true}
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="DisplayData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <TextInput
      id="searchFilter"
      _disclosedFields={["iconBefore"]}
      hideLabel={true}
      iconBefore="bold/interface-search"
      marginType="normal"
      placeholder="Search by name"
    >
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="DisplayData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <RangeSlider
      id="rangeSlider1"
      hideOutput={true}
      label="Active Project Year- {{rangeSlider1.value.start}}-{{rangeSlider1.value.end}}"
      labelPosition="top"
      max="2024"
      min="2022"
      step={1}
      style={{ ordered: [{ accent: "rgb(61, 23, 23)" }] }}
      value={{ ordered: [{ start: "2024" }, { end: "2024" }] }}
    />
    <Button
      id="button12"
      style={{ ordered: [{ background: "secondary" }] }}
      text="Activity Summary"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="activitySummaryF"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Include src="./tabbedContainer2.rsx" />
  </View>
</Container>
