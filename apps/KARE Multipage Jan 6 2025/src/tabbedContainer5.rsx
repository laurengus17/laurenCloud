<Container
  id="tabbedContainer5"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  disabled=""
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden=""
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ headerBackground: "rgb(200, 56, 3)" }] }}
>
  <Header>
    <Tabs
      id="tabs5"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer5"
      value="{{ self.values[0] }}"
    >
      <Option id="e67e7" value="Tab 1" />
      <Option id="8e816" value="Tab 2" />
      <Option id="cfcdc" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="8939c" viewKey="Product Overview">
    <Text
      id="title2"
      label="Title"
      labelPosition="top"
      value="## Product Overview"
    />
    <Select
      id="productType"
      automaticItemColors={true}
      captionByIndex={[]}
      colorByIndex={[]}
      data={[]}
      deprecatedLabels={[]}
      disabled=""
      disabledByIndex={[]}
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex={[]}
      hidden=""
      hiddenByIndex={[]}
      iconByIndex={[]}
      imageByIndex={[]}
      itemMode="static"
      label="Product type"
      labelPosition="top"
      labels={[]}
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Enter value"
      required={true}
      showSelectionIndicator={true}
      tooltipByIndex={[]}
      value="{{ existingItem. }}"
      values={[]}
    >
      <Option id="bd696" value="Bag" />
      <Option id="69e05" value="Rollstock" />
    </Select>
    <Button
      id="button14"
      disabled="{{ !quantInput.value }}"
      marginType="normal"
      text="Add"
    >
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{!customProps.value || [...customProps.value, quantInput.value]}}",
            },
          ],
        }}
        pluginId="customProps"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="quantInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TextInput
      id="quantInput"
      label="Add a Quantity"
      marginType="normal"
      placeholder="Enter value"
    />
    <Select
      id="Laminated"
      captionByIndex={[]}
      colorByIndex={[]}
      data={[]}
      deprecatedLabels={[]}
      disabled=""
      disabledByIndex={[]}
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex={[]}
      hidden=""
      hiddenByIndex={[]}
      iconByIndex={[]}
      imageByIndex={[]}
      itemMode="static"
      label="Laminated"
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
      <Option id="50fbf" value="Yes" />
      <Option id="f6fb6" value="No" />
    </Select>
    <Select
      id="PurchaseUnitofMeasure"
      captionByIndex={[]}
      colorByIndex={[]}
      data={[]}
      deprecatedLabels={[]}
      disabled=""
      disabledByIndex={[]}
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex={[]}
      hidden=""
      hiddenByIndex={[]}
      iconByIndex={[]}
      imageByIndex={[]}
      itemMode="static"
      label="Purchase Unit of Measure"
      labelPosition="top"
      labels={[]}
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Enter value"
      required={true}
      showSelectionIndicator={true}
      tooltipByIndex={[]}
      value="{{ existingItem.selectedItem.sold_by }}"
      values={[]}
    >
      <Option id="e7c98" label="Impressions" value="Impression" />
      <Option id="d5477" label="Bags" value="Bags" />
      <Option id="b976e" label="Feet" value="Ft" />
      <Option
        id="8c01a"
        color={null}
        disabled={null}
        fallbackText={null}
        hidden={null}
        icon={null}
        image={null}
        label="Lbs"
        value="pound"
      />
    </Select>
    <Select
      id="printType"
      captionByIndex={[]}
      colorByIndex={[]}
      data={[]}
      deprecatedLabels={[]}
      disabled=""
      disabledByIndex={[]}
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex={[]}
      hidden=""
      hiddenByIndex={[]}
      iconByIndex={[]}
      imageByIndex={[]}
      itemMode="static"
      label="Print type"
      labelPosition="top"
      labels={[]}
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Enter value"
      required={true}
      showSelectionIndicator={true}
      tooltipByIndex={[]}
      value="{{ existingItem.selectedItem.printed }}"
      values={[]}
    >
      <Option id="50fbf" label="Printed" value="Yes" />
      <Option id="f6fb6" label="Unprinted" value="No" />
    </Select>
    <ListViewBeta
      id="listView1"
      _primaryKeys=""
      data="{{ customProps.value }}"
      heightType="auto"
      itemWidth="200px"
      marginType="none"
      numColumns={3}
      padding="0"
    >
      <TextInput
        id="textInput2"
        label="Quantity {{PurchaseUnitofMeasure.value}}"
        labelPosition="top"
        marginType="normal"
        placeholder="Enter value"
        value="{{item}}"
      />
    </ListViewBeta>
  </View>
  <View id="18c7c" viewKey="Film Specification">
    <Text
      id="title3"
      label="Title2"
      labelPosition="top"
      value="## Film Specification"
    />
    <Select
      id="materialBlend"
      captionByIndex={[]}
      colorByIndex={[]}
      data="{{ materialBlendQuery.data }}"
      deprecatedLabels={[]}
      disabledByIndex={[]}
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex={[]}
      hiddenByIndex={[]}
      iconByIndex={[]}
      imageByIndex={[]}
      label="Material blend"
      labelPosition="top"
      labels="{{ item.blenddesc }}"
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      tooltipByIndex={[]}
      value={
        '{{ existingItem.selectedItem["1_blend"] || existingItem.selectedItem.blend.replace(".", "-")}}'
      }
      values="{{ item.blendid }}"
    >
      <Option id="4dbec" value="Option 1" />
      <Option id="c570a" value="Option 2" />
      <Option id="bd28b" value="Option 3" />
    </Select>
    <Select
      id="construction"
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
      <Option id="bd696" value="Mono-Layer" />
      <Option id="69e05" value="Co-Ex" />
    </Select>
    <NumberInput
      id="gauge"
      currency="USD"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      inputValue={0}
      label="Gauge"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Select
      id="color"
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
      label="Film Color"
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
      <Option id="50fbf" value="Clear" />
      <Option id="f6fb6" value="Tint" />
      <Option id="28e7c" value="Opaque" />
    </Select>
    <NumberInput
      id="TargetOpacity"
      currency="USD"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      inputValue={0}
      label="Target Opacity"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Select
      id="barrierRequirement"
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
      label="Barrier requirement"
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
      <Option id="53bd5" label="Yes" value="Yes" />
      <Option id="210c2" label="No" value="No" />
    </Select>
    <TextArea
      id="barrierRequirementDetails"
      autoResize={true}
      inputTooltip="`Shift+Enter` to save, `Esc` to cancel"
      label="Barrier Requirement Details"
      labelPosition="top"
      labelWrap={true}
      minLines={2}
      placeholder="Enter value"
    />
  </View>
  <View id="4647d" viewKey="Finished Product Type">
    <Include src="./container1.rsx" />
    <Include src="./container2.rsx" />
    <Select
      id="loadMethod"
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
      label="Load method"
      labelPosition="top"
      labels={[]}
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      tooltipByIndex={[]}
      value=""
      values={[]}
    >
      <Option
        id="415fd"
        disabled={false}
        hidden={'{{ productType.value == "Rollstock" }}'}
        value="Hand"
      />
      <Option
        id="eda3a"
        disabled={false}
        hidden={'{{ productType.value == "Rollstock" }}'}
        value="Wicker"
      />
      <Option
        id="284fe"
        disabled={false}
        hidden={'{{ productType.value == "Bag" }}'}
        value="VFFS"
      />
      <Option
        id="217d7"
        disabled={false}
        hidden={'{{ productType.value == "Bag" }}'}
        value="HFFS"
      />
    </Select>
  </View>
  <View id="910b1" iconPosition="left" viewKey="Printing Specs">
    <Select
      id="customerSampleType"
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
      label="Graphic Sample Provided"
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
      <Option id="5f62b" value="PDF" />
      <Option id="fcdef" value="Physical Sample" />
      <Option id="2afb1" value="Picture" />
      <Option id="90ed9" disabled={false} hidden={false} value="None" />
    </Select>
    <FileDropzone
      id="GraphicfileDropzone1"
      _isUpgraded={true}
      accept=""
      appendNewSelection={true}
      disabled={'{{ customerSampleType.value  == "None"}}'}
      files={[]}
      hidden={'{{ customerSampleType.value  == "None"}}'}
      iconBefore="bold/programming-browser-search"
      isPublic={true}
      label="Graphic File"
      labelPosition="top"
      parsedValue={[]}
      placeholder="Select or drag and drop"
      selectionType="multiple"
      shouldOverwriteOnNameCollision={true}
      uploadToRetoolStorage={true}
      value={[]}
    />
    <Select
      id="printType2"
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
      label="Print type"
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
      <Option id="5f62b" value="Line" />
      <Option id="fcdef" value="Process" />
      <Option id="2afb1" value="Screen" />
    </Select>
    <Select
      id="WhiteOpacity"
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
      label="White Opacity"
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
      <Option id="e7c98" caption="50-53%" label="Standard" value="53" />
      <Option id="d5477" caption="53-55%" label="High Opacity" value="55" />
      <Option id="b976e" caption="55-59%" label="Ultra High" value="59" />
    </Select>
    <Select
      id="numberOfSidesPrinted"
      captionByIndex={[]}
      colorByIndex={[]}
      data={[]}
      deprecatedLabels={[]}
      disabled=""
      disabledByIndex={[]}
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex={[]}
      hiddenByIndex={[]}
      iconByIndex={[]}
      imageByIndex={[]}
      itemMode="static"
      label="Number of sides printed"
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
      <Option id="5f62b" value="1" />
      <Option id="fcdef" value="2" />
    </Select>
    <NumberInput
      id="totalLineColors"
      currency="USD"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      inputValue={0}
      label="Total line colors"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="totalProcessColors"
      currency="USD"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      inputValue={0}
      label="Total process colors"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="numberOfColors"
      currency="USD"
      disabled="true"
      inputValue={0}
      label="Number of colors"
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
      showSeparators={true}
      showStepper={true}
      value="{{totalLineColors.value+totalProcessColors.value}}"
    />
    <TextArea
      id="generalNotes"
      autoResize={true}
      label="General notes"
      labelPosition="top"
      labelWrap={true}
      minLines={2}
      placeholder="Enter value"
    />
  </View>
  <View id="b03e7" iconPosition="left" viewKey="Packing">
    <Select
      id="skids"
      emptyMessage="No options"
      itemMode="static"
      label="Skids"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="ac729" value="42x48" />
      <Option id="a2676" value="Custom" />
    </Select>
    <TextInput
      id="skidsspecify"
      disabled={'{{ skids.value != "Custom" }}'}
      hidden={'{{ skids.value != "Custom" }}'}
      label="Specify Skids"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Select
      id="boxes"
      disabled={'{{ productType.value != "Bag" }}'}
      emptyMessage="No options"
      hidden={'{{ productType.value != "Bag" }}'}
      itemMode="static"
      label="Boxes"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="ac729" value="Standard" />
      <Option id="a2676" value="Custom" />
    </Select>
    <TextInput
      id="Boxspecify"
      disabled={'{{ boxes.value != "Custom" }}'}
      hidden={'{{ boxes.value != "Custom" }}'}
      label="Specify Boxes"
      labelPosition="top"
      placeholder="Enter value"
    />
  </View>
  <View id="3c7dd" iconPosition="left" viewKey="Shipping and Warehouse">
    <Multiselect
      id="multiselect4"
      data="{{ ShippingLoc.data }}"
      emptyMessage="No options"
      label="Addresses"
      labelPosition="top"
      labels={'{{ item.Addr1+", "+item.City+" "+item.ST }}'}
      maxCount="1"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.id }}"
      wrapTags={true}
    />
    <Select
      id="select2"
      emptyMessage="No options"
      itemMode="static"
      label="Warehouse Terms"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="934d6" value="MS" />
      <Option id="27206" value="INV 30" />
      <Option id="b37b8" value="INV 60" />
      <Option id="63b96" disabled={false} hidden={false} value="INV 90" />
    </Select>
    <Button id="button15" text="Add Address">
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame11"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Select
      id="select4"
      emptyMessage="No options"
      itemMode="static"
      label="Locked Trailer Required"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="934d6" value="Yes" />
      <Option id="27206" value="No" />
    </Select>
    <Select
      id="select5"
      emptyMessage="No options"
      itemMode="static"
      label="Docktime Required"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="934d6" value="Yes" />
      <Option id="27206" value="No" />
    </Select>
  </View>
  <View id="3aa44" iconPosition="left" viewKey="Product Testing">
    <Select
      id="COC_COA"
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
      label="COC Or COA?"
      labelPosition="top"
      labels={[]}
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex={[]}
      values={[]}
    >
      <Option id="53bd5" value="No" />
      <Option id="210c2" value="COC" />
      <Option id="7d495" value="COA" />
    </Select>
    <Select
      id="select6"
      emptyMessage="No options"
      itemMode="static"
      label="OTR Testing Required"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="d82d8" value="Yes" />
      <Option id="0871d" value="No" />
    </Select>
  </View>
  <View
    id="d348e"
    iconPosition="left"
    viewKey="Additional Notes & Special Requests"
  >
    <TextArea
      id="textArea1"
      autoResize={true}
      label="Comments and Notes"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
    <FileInput
      id="fileInput1"
      _isUpgraded={true}
      iconBefore="bold/programming-browser-search"
      label="Relevant Attachment"
      labelPosition="top"
      shouldOverwriteOnNameCollision={true}
      textBefore="Browse"
      uploadToRetoolStorage={true}
    />
  </View>
</Container>
