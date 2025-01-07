<Container
  id="container2"
  _gap={0}
  disabled={'{{productType.value === "Bag"}}'}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden={'{{productType.value === "Bag"}}'}
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle2"
      value="## Rollstock Specification"
      verticalAlign="center"
    />
  </Header>
  <View id="46500" viewKey="View 1">
    <NumberInput
      id="RollstockWidth"
      currency="USD"
      inputValue={0}
      label="Width"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value=""
    />
    <NumberInput
      id="RollstockRepeat"
      currency="USD"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      inputValue={0}
      label="Repeat"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value=""
    />
    <Select
      id="RollstockConstruction"
      captionByIndex={[]}
      colorByIndex={[]}
      data={[]}
      deprecatedLabels={[]}
      disabledByIndex={[]}
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex={[]}
      hiddenByIndex={[]}
      iconByIndex={[]}
      imageByIndex={[]}
      itemMode="static"
      label="Construction"
      labelPosition="top"
      labels={[]}
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Enter value"
      required={true}
      showSelectionIndicator={true}
      tooltipByIndex={[]}
      values={[]}
    >
      <Option id="53bd5" value="SWS" />
      <Option id="210c2" value="CF" />
      <Option id="7d495" value="J-Sheet" />
    </Select>
    <Select
      id="rollTargetMeasurement"
      captionByIndex={[]}
      colorByIndex={[]}
      data={[]}
      deprecatedLabels={[]}
      disabledByIndex={[]}
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex={[]}
      hiddenByIndex={[]}
      iconByIndex={[]}
      imageByIndex={[]}
      itemMode="static"
      label="Roll target measurement"
      labelPosition="top"
      labels={[]}
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      tooltipByIndex={[]}
      value="{{ self.values[0] }}"
      values={[]}
    >
      <Option id="c887c" value="LBs" />
      <Option id="31261" value="Ft" />
      <Option id="2c3f9" value="Imp" />
      <Option
        id="e2dcc"
        color={null}
        disabled={null}
        fallbackText={null}
        hidden={null}
        icon={null}
        image={null}
        value="OD"
      />
    </Select>
    <NumberInput
      id="RollTargetMinimum"
      currency="USD"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      inputValue={0}
      label=" Finished Roll Minimum  {{rollTargetMeasurement.value}}"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="RollTargetMaximum"
      currency="USD"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      inputValue={0}
      label="Finished Roll Maximum {{rollTargetMeasurement.value}}"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="FinishedRollTarget"
      currency="USD"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      inputValue={0}
      label="FInished Roll Target {{rollTargetMeasurement.value}}"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Select
      id="coreSize"
      captionByIndex={[]}
      colorByIndex={[]}
      data={[]}
      deprecatedLabels={[]}
      disabledByIndex={[]}
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex={[]}
      hiddenByIndex={[]}
      iconByIndex={[]}
      imageByIndex={[]}
      itemMode="static"
      label="Core size"
      labelPosition="top"
      labels={[]}
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Enter value"
      required={true}
      showSelectionIndicator={true}
      tooltipByIndex={[]}
      values={[]}
    >
      <Option id="50fbf" caption="Inches" value="3" />
      <Option id="f6fb6" caption="Inches" value="6" />
    </Select>
    <Checkbox
      id="polyWrap"
      label="Poly wrap"
      labelPosition="top"
      labelWrap={true}
      value=""
    />
    <Checkbox
      id="corePlugsRequirement"
      label="Core plugs requirement"
      labelPosition="top"
      labelWrap={true}
      value=""
    />
    <EditableNumber
      id="maxSplicesPerRoll"
      currency="USD"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Max splices per roll"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      textSize="default"
      value=""
    />
  </View>
</Container>
