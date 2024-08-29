<Container
  id="container77"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0 0 20px 0"
  marginType="normal"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle123"
      marginType="normal"
      value="#### Insr LTR B"
      verticalAlign="center"
    />
  </Header>
  <View id="379eb" viewKey="View 1">
    <CheckboxGroup
      id="checkboxGroup3"
      disabled="true"
      itemMode="static"
      label="Automobile Liability"
      labelPosition="top"
      marginType="normal"
      value="{{ [self.values[0]] }}"
    >
      <Option id="cbccc" label="Any auto" value="1" />
      <Option id="3a74b" label="Owned autos only" value="2" />
      <Option id="b49bf" label="hired autos only" value="3" />
      <Option
        id="1ca25"
        disabled={false}
        hidden={false}
        label="Scheduled autos"
        value="4"
      />
      <Option
        id="5c642"
        disabled={false}
        hidden={false}
        label="Project"
        value="5"
      />
    </CheckboxGroup>
    <CheckboxGroup
      id="checkboxGroup6"
      disabled="true"
      itemMode="static"
      labelPosition="top"
      marginType="normal"
      value="{{ [self.values[0]] }}"
    >
      <Option id="cbccc" label="Addl Insd" value="Option 1" />
      <Option id="3a74b" label="Subr WVD" value="Option 2" />
    </CheckboxGroup>
    <TextArea
      id="textArea2"
      autoResize={true}
      disabled="true"
      label="Policy Number"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      placeholder="Enter value"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.automobile_liability.policy_number }}"
    />
    <TextInput
      id="textInput269"
      disabled="true"
      label="Combined Single Limit (Ea accident)"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.automobile_liability.limits.combined_single_limit }}"
    />
    <TextInput
      id="textInput270"
      disabled="true"
      label="Bodily Injury (Per person)"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.automobile_liability.limits.bodily_injury_per_person }}"
    />
    <TextInput
      id="textInput271"
      disabled="true"
      label="Bodily Injury (Per accident)"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.automobile_liability.limits.bodily_injury_per_accident }}"
    />
    <TextInput
      id="textInput272"
      disabled="true"
      label="Property Damage (Per accident)"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.automobile_liability.limits.property_damage }}"
    />
    <Date
      id="date27"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="true"
      iconBefore="bold/interface-calendar"
      label="Policy EFF"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.automobile_liability.policy_eff }}"
    />
    <Date
      id="date28"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="true"
      iconBefore="bold/interface-calendar"
      label="Policy EXP"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.automobile_liability.policy_exp }}"
    />
  </View>
</Container>
