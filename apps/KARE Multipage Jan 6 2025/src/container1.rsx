<Container
  id="container1"
  _gap={0}
  disabled={'{{productType.value === "Rollstock"}}'}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden={'{{productType.value === "Rollstock"}}'}
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle1"
      value="## Bag Specification"
      verticalAlign="center"
    />
  </Header>
  <View id="46500" viewKey="View 1">
    <NumberInput
      id="BagWidth"
      currency="USD"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      inputValue={0}
      label="Width"
      labelCaption="Inches"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value=""
    />
    <NumberInput
      id="BagLength"
      currency="USD"
      hideLabel={false}
      inputTooltip="`Enter` to save, `Esc` to cancel"
      inputValue={0}
      label="Length"
      labelCaption="Inches"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value=""
    />
    <Select
      id="gusset"
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
      label="Gusset"
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
      <Option id="e7c98" label="1 Inch" value="1" />
      <Option id="d5477" label="2 Inches" value="2" />
      <Option id="b976e" label="2.5 Inches" value="2.5" />
      <Option id="ba230" label="3 Inches" value="3" />
      <Option id="207ae" label="3.5 Inches" value="3.5" />
      <Option id="63274" label="4 Inches" value="4" />
      <Option id="eeb30" label="4.5 Inches" value="4.5" />
      <Option id="03895" label="5 Inches" value="5" />
      <Option id="ac3f8" label="5.5 Inches" value="5.5" />
      <Option id="9a682" label="6 Inches" value="6" />
      <Option id="e96d8" label="7 Inches" value="7" />
      <Option id="d692d" label="8 Inches" value="8" />
      <Option id="44f38" label="9 Inches" value="9" />
      <Option id="e1aed" label="10 Inches" value="10" />
    </Select>
    <NumberInput
      id="lip"
      currency="USD"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      inputValue={0}
      label="Lip"
      labelCaption="Inches"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value=""
    />
    <EditableNumber
      id="flip"
      currency="USD"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Flip"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      textSize="default"
      value=""
    />
    <Checkbox
      id="secondWebAttached"
      label="Second web attached"
      labelPosition="top"
      labelWrap={true}
      value=""
    />
    <Checkbox
      id="zipper"
      label="Zipper"
      labelPosition="top"
      labelWrap={true}
      value=""
    />
    <Select
      id="putUpType"
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
      label="Put up"
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
      <Option id="511b1" value="Wicket" />
      <Option id="ef81a" value="Bulk" />
      <Option id="73647" value="Staple" />
    </Select>
    <EditableNumber
      id="bagsPerWicket"
      currency="USD"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Bags per bundle"
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
