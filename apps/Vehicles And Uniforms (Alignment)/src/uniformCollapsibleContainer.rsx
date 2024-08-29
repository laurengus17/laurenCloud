<Container
  id="uniformCollapsibleContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  marginType="normal"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="collapsibleTitle10"
      marginType="normal"
      value="#### Uniform Information"
      verticalAlign="center"
    />
    <Switch
      id="uniformOptinToggle"
      label="Uniform Opt-in"
      marginType="normal"
      value="{{vehiclesAndUniforms.value.uniformOptions.uniformOptIn}}"
    >
      <Event
        event="true"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUniformEntities"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <ToggleButton
      id="collapsibleToggle10"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      marginType="normal"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ uniformCollapsibleContainer.showBody}}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="uniformCollapsibleContainer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="42bce" viewKey="View 1">
    <Text
      id="dispatchAddressTextArea"
      marginType="normal"
      value="#### Dispatch address
{{ getAddress.rawData.dispatchAddress.address1}}
{{ getAddress.rawData.dispatchAddress.address2 }}
{{ getAddress.rawData.dispatchAddress.city }}, {{ getAddress.rawData.dispatchAddress.state }} {{ getAddress.rawData.dispatchAddress.zipcode }}"
      verticalAlign="center"
    />
    <Multiselect
      id="uniformMultiselect"
      captionByIndex=""
      colorByIndex=""
      data="{{ uniformEntities.value }}"
      disabled="{{!uniformOptinToggle.value}}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Entity Uniform"
      labelPosition="top"
      labels="{{ item.name }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{getVehiclesAndUniforms.data.uniformOptions.uniformEntitiesIds}}"
      values="{{ item.id }}"
      wrapTags={true}
    />
    <Select
      id="uniformClothingSize"
      disabled="{{!uniformOptinToggle.value}}"
      emptyMessage="No options"
      itemMode="static"
      label="Clothing Size"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{getVehiclesAndUniforms.data.uniformOptions.uniforms[0].size}}"
    >
      <Option
        id="d4bfd"
        disabled={false}
        hidden={false}
        label="X-Small"
        value="XS"
      />
      <Option id="2175b" label="Small" value="S" />
      <Option id="e7323" label="Medium" value="M" />
      <Option id="12863" label="Large" value="L" />
      <Option
        id="234f3"
        disabled={false}
        hidden={false}
        label="X-Large"
        value="XL"
      />
      <Option
        id="dfdaa"
        disabled={false}
        hidden={false}
        label="2X-Large"
        value="XXL"
      />
    </Select>
    <Button
      id="saveUniformPreferencesButton"
      disabled="{{!uniformOptIn.value || uniformMultiselect.selectedItems.length <= 0 || !uniformClothingSize.value }}"
      hidden="{{!uniformOptIn.value }}"
      text="Save Preferences"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateUniformInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
