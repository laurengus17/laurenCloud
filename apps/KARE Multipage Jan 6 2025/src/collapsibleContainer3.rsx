<Container
  id="collapsibleContainer3"
  _gap={0}
  disabledByIndex={[]}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hiddenByIndex={[]}
  iconByIndex={[]}
  iconPositionByIndex={[]}
  labels={[]}
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ background: "canvas" }] }}
  tooltipByIndex={[]}
  viewKeys={[]}
  views={[]}
>
  <Header>
    <Text
      id="collapsibleTitle3"
      horizontalAlign="center"
      style={{ ordered: [{ color: "rgb(11, 22, 42)" }] }}
      value="#### Stats"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle3"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer3.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="03013" viewKey="View 1">
    <Text
      id="text19"
      horizontalAlign="right"
      style={{ ordered: [{ color: "rgb(11, 22, 42)" }] }}
      value="### Pipeline Vol:"
      verticalAlign="center"
    />
    <NumberInput
      id="numberInput2"
      currency="USD"
      decimalPlaces=""
      inputValue={0}
      label=""
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      style={{ ordered: [] }}
      textAlign="right"
      value="{{Number(countVar.data[0].PLV) }}"
    />
    <Text
      id="text26"
      horizontalAlign="right"
      margin="0"
      value="### Lan Bags:"
      verticalAlign="center"
    />
    <NumberInput
      id="numberInput5"
      currency="USD"
      decimalPlaces=""
      inputValue={0}
      label=""
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      style={{ ordered: [] }}
      value="{{Number(countVar.data[0].LB) }}"
    />
    <NumberInput
      id="numberInput3"
      currency="USD"
      decimalPlaces=""
      inputValue={0}
      label=""
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      style={{ ordered: [] }}
      value="{{Number(countVar.data[0].PI) }}"
    />
    <NumberInput
      id="numberInput4"
      currency="USD"
      decimalPlaces=""
      inputValue={0}
      label=""
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      style={{ ordered: [] }}
      value="{{Number(countVar.data[0].B) }}"
    />
    <Text
      id="text24"
      horizontalAlign="right"
      margin="0"
      value="### Printed Imp:"
      verticalAlign="center"
    />
    <Text
      id="text25"
      horizontalAlign="right"
      margin="0"
      value="### Bags:"
      verticalAlign="center"
    />
    <NumberInput
      id="numberInput6"
      currency="USD"
      decimalPlaces=""
      inputValue={0}
      label=""
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      style={{ ordered: [] }}
      value="{{Number(countVar.data[0].wonT) }}"
    />
    <Text
      id="text27"
      horizontalAlign="right"
      margin="0"
      value="### Op Won:"
      verticalAlign="center"
    />
  </View>
</Container>
