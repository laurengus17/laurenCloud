<Container
  id="container105"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  marginType="none"
  padding="12px"
  showBody={true}
  showBorder={false}
>
  <Header>
    <Text
      id="containerTitle154"
      marginType="normal"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="f8183" viewKey="View 1">
    <Text
      id="text114"
      marginType="normal"
      value="<h4>Business Physical Address</h4>"
      verticalAlign="center"
    />
    <TextInput
      id="bizAddress1Input"
      label="Address Line 1"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.businessAddress.address1 }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessAddress: {\n    ...businessInfo.value.businessAddress,\n    address1: bizAddress1Input.value,\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Map
      id="mapboxMap4"
      geoJson=""
      latitude="{{ getGeolocationBusinessAddress.data.results[0].geometry.location.lat }}"
      longitude="{{ getGeolocationBusinessAddress.data.results[0].geometry.location.lng }}"
      maintainSpaceWhenHidden={false}
      points="{{
  [{ longitude: getGeolocationBusinessAddress.data.results[0].geometry.location.lng, latitude: getGeolocationBusinessAddress.data.results[0].geometry.location.lat }]
}}
"
      zoom="15"
    />
    <TextInput
      id="bizAddress2Input"
      label="Address Line 2"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.businessAddress.address2 }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n    businessAddress: {\n    ...businessInfo.value.businessAddress,\n    address2: bizAddress2Input.value,\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="bizCityInput"
      label="City"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.businessAddress.city }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n    businessAddress: {\n    ...businessInfo.value.businessAddress,\n    city: bizCityInput.value,\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Select
      id="bizStateSelect"
      data="{{ statesListTF.value }}"
      emptyMessage="No options"
      label="State"
      labelPosition="top"
      labels="{{ item.label }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select"
      showSelectionIndicator={true}
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.businessAddress.state }}"
      values="{{ item.value }}"
    >
      <Option id="c88d5" disabled={false} hidden={false} value="Option 1" />
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessAddress: {\n    ...businessInfo.value.businessAddress,\n    state: bizStateSelect.value,\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <TextInput
      id="bizZipInput"
      label="Zip Code"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.businessAddress.zipcode }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n    businessAddress: {\n    ...businessInfo.value.businessAddress,\n    zip: bizZipInput.value,\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
  </View>
</Container>
