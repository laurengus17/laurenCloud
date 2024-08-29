<Container
  id="container88"
  disabled="{{putAlignmentRates.isFetching}}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="normal"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle133"
      marginType="normal"
      value="#### Useful Information"
      verticalAlign="center"
    />
  </Header>
  <View id="11500" viewKey="View 1">
    <CheckboxGroup
      id="workOrderTypesCheckboxGroup"
      itemMode="static"
      label="Work Order Types"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [{ borderRadius: "0px\n" }] }}
      value="{{ getAlignmentRates.data.workOrderType }}"
    >
      <Option id="36b8a" label="Reactive" value="reactive" />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="putAlignmentRates"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </CheckboxGroup>
    <CheckboxGroup
      id="locationTypesCheckboxGroup"
      itemMode="static"
      label="Location Types"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [{ borderRadius: "0px" }] }}
      value="{{ getAlignmentRates.data.locationTypes }}"
    >
      <Option id="36b8a" label="Commercial" value="commercial" />
      <Option id="f0d8c" label="Residential" value="residential" />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="putAlignmentRates"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </CheckboxGroup>
    <CheckboxGroup
      id="restrictionsCheckboxGroup"
      itemMode="static"
      label="Restrictions"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [{ borderRadius: "0px" }] }}
      value="{{ getAlignmentRates.data.restrictions }}"
    >
      <Option
        id="36b8a"
        label="Government Building"
        value="governmentBuilding"
      />
      <Option id="f0d8c" label="Medical Building" value="medicalBuilding" />
      <Option
        id="ce4d6"
        label="Military Installation"
        value="militaryInstallation"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="putAlignmentRates"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </CheckboxGroup>
    <RadioGroup
      id="interestedInPartnershipRadioGroup"
      itemMode="static"
      label="Interested in Partnership?"
      labelPosition="top"
      value="{{getAlignmentRates.data.interestedInPartnership}}"
    >
      <Option id="d67e4" label="Yes" value="true" />
      <Option id="2ec56" label="No" value="false" />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="putAlignmentRates"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
  </View>
</Container>
