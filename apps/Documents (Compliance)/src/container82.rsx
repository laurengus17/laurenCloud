<Container
  id="container82"
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
      id="containerTitle128"
      marginType="normal"
      value="#### Insr LTR C"
      verticalAlign="center"
    />
  </Header>
  <View id="379eb" viewKey="View 1">
    <CheckboxGroup
      id="checkboxGroup5"
      disabled="true"
      itemMode="static"
      label="Liability Type"
      labelPosition="top"
      marginType="normal"
      value="{{ [self.values[0]] }}"
    >
      <Option id="cbccc" label="Umbrella Liab" value="1" />
      <Option id="3a74b" label="Excess Liab" value="2" />
      <Option id="b49bf" label="Occur" value="3" />
      <Option
        id="1ca25"
        disabled={false}
        hidden={false}
        label="Claims-made"
        value="4"
      />
      <Option
        id="5c642"
        disabled={false}
        hidden={false}
        label="Ded"
        value="5"
      />
      <Option
        id="9d6bf"
        disabled={false}
        hidden={false}
        label="Retention"
        value="6"
      />
    </CheckboxGroup>
    <CheckboxGroup
      id="checkboxGroup4"
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
      id="textArea3"
      autoResize={true}
      disabled="true"
      label="Policy Number"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      placeholder="Enter value"
      readOnly="true"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.umbrella_liability.policy_number }}"
    />
    <TextInput
      id="textInput274"
      disabled="true"
      label="Each Occurrence"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      readOnly="true"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.umbrella_liability.limits.each_occurrence }}"
    />
    <TextInput
      id="textInput275"
      disabled="true"
      label="Aggregate"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.umbrella_liability.limits.aggregate }}"
    />
    <Date
      id="date29"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="true"
      iconBefore="bold/interface-calendar"
      label="Policy EFF"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.umbrella_liability.policy_eff }}"
    />
    <Date
      id="date30"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="true"
      iconBefore="bold/interface-calendar"
      label="Policy EXP"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.umbrella_liability.policy_exp }}"
    />
  </View>
</Container>
