<Container
  id="container107"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{ !businessInfo.value.mailingAddressDifferent }}"
  margin="0"
  marginType="none"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <Header>
    <Text
      id="containerTitle156"
      marginType="normal"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="a7ca7" viewKey="View 1">
    <TextInput
      id="mailingAddress1Input"
      label="Address Line 1"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.mailingAddress.address1 }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n    mailingAddress: {\n    ...businessInfo.value.mailingAddress,\n    address1: mailingAddress1Input.value,\n  }\n} }}",
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
    <Map
      id="mapboxMap5"
      geoJson=""
      latitude="{{ getGeolocationMailingAddress.data.results[0].geometry.location.lat }}"
      longitude="{{ getGeolocationMailingAddress.data.results[0].geometry.location.lng }}"
      maintainSpaceWhenHidden={false}
      points="{{
  [{ longitude: getGeolocationMailingAddress.data.results[0].geometry.location.lng, latitude: getGeolocationMailingAddress.data.results[0].geometry.location.lat }]
}}
"
      zoom="15"
    />
    <TextInput
      id="mailingAddress2Input"
      label="Address Line 2"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.mailingAddress.address2 }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n    mailingAddress: {\n    ...businessInfo.value.mailingAddress,\n    address2: mailingAddress2Input.value,\n  }\n} }}",
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
      id="mailingCityInput"
      label="City"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.mailingAddress.city }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n    mailingAddress: {\n    ...businessInfo.value.mailingAddress,\n    city: mailingCityInput.value,\n  }\n} }}",
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
      id="mailingStateSelect"
      captionByIndex=""
      colorByIndex=""
      data="{{ statesListTF.value }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="State"
      labelPosition="top"
      labels="{{ item.label }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select"
      showSelectionIndicator={true}
      style={{ ordered: [{ background: "canvas" }] }}
      tooltipByIndex=""
      value="{{ businessInfo.value.mailingAddress.state }}"
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
                "{{ {\n  ...businessInfo.value,\n    mailingAddress: {\n    ...businessInfo.value.mailingAddress,\n    state: mailingStateSelect.value,\n  }\n} }}",
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
      id="mailingZipInput"
      label="Zip Code"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.mailingAddress.zipcode }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n    mailingAddress: {\n    ...businessInfo.value.mailingAddress,\n    zip: mailingZipInput.value,\n  }\n} }}",
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
